#!/usr/bin/env bash

source test/setup

PATH=$PWD/bin:$PATH
source bash+ :std

got=$(die "Nope" 2>&1) || true
want="Nope
 at line 8 in main of test/die.t"
is "$got" "$want" "die() msg ok"

got=$(die "Nope\n" 2>&1) || true
want="Nope"
is "$got" "$want" "die() msg ok"

done_testing 2
