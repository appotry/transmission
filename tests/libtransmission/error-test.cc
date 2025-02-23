/*
 * This file Copyright (C) 2013-2014 Mnemosyne LLC
 *
 * It may be used under the GNU GPL versions 2 or 3
 * or any future license endorsed by Mnemosyne LLC.
 *
 */

#include "transmission.h"
#include "error.h"

#include "gtest/gtest.h"

using namespace std::literals;

TEST(Error, errorSet)
{
    tr_error* err = nullptr;

    tr_error_prefix(&err, "error: ");
    EXPECT_EQ(nullptr, err);

    tr_error_set(&err, 2, "oops"sv);
    EXPECT_NE(nullptr, err);
    EXPECT_EQ(2, err->code);
    EXPECT_STREQ("oops", err->message);

    tr_error_prefix(&err, "error: ");
    EXPECT_NE(nullptr, err);
    EXPECT_EQ(2, err->code);
    EXPECT_STREQ("error: oops", err->message);

    tr_error_free(err);
}

TEST(Error, propagate)
{
    tr_error* err = nullptr;
    tr_error* err2 = nullptr;
    auto constexpr Code = int{ 1 };

    tr_error_set(&err, Code, "oops"sv);
    EXPECT_NE(nullptr, err);
    EXPECT_EQ(Code, err->code);
    EXPECT_STREQ("oops", err->message);

    tr_error_propagate(&err2, &err);
    EXPECT_NE(nullptr, err2);
    EXPECT_EQ(Code, err2->code);
    EXPECT_STREQ("oops", err2->message);
    EXPECT_EQ(nullptr, err);

    tr_error_clear(&err2);
}
