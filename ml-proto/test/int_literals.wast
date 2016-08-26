(module
  (func "i32.test" (result i32) (return (i32.const 0x0bAdD00D)))
  (func "i32.umax" (result i32) (return (i32.const 0xffffffff)))
  (func "i32.smax" (result i32) (return (i32.const 0x7fffffff)))
  (func "i32.neg_smax" (result i32) (return (i32.const -0x7fffffff)))
  (func "i32.smin" (result i32) (return (i32.const -0x80000000)))
  (func "i32.alt_smin" (result i32) (return (i32.const 0x80000000)))
  (func "i32.inc_smin" (result i32) (return (i32.add (i32.const -0x80000000) (i32.const 1))))
  (func "i32.neg_zero" (result i32) (return (i32.const -0x0)))
  (func "i32.not_octal" (result i32) (return (i32.const 010)))
  (func "i32.unsigned_decimal" (result i32) (return (i32.const 4294967295)))
  (func "i32.plus_sign" (result i32) (return (i32.const +42)))

  (func "i64.test" (result i64) (return (i64.const 0x0CABBA6E0ba66a6e)))
  (func "i64.umax" (result i64) (return (i64.const 0xffffffffffffffff)))
  (func "i64.smax" (result i64) (return (i64.const 0x7fffffffffffffff)))
  (func "i64.neg_smax" (result i64) (return (i64.const -0x7fffffffffffffff)))
  (func "i64.smin" (result i64) (return (i64.const -0x8000000000000000)))
  (func "i64.alt_smin" (result i64) (return (i64.const 0x8000000000000000)))
  (func "i64.inc_smin" (result i64) (return (i64.add (i64.const -0x8000000000000000) (i64.const 1))))
  (func "i64.neg_zero" (result i64) (return (i64.const -0x0)))
  (func "i64.not_octal" (result i64) (return (i64.const 010)))
  (func "i64.unsigned_decimal" (result i64) (return (i64.const 18446744073709551615)))
  (func "i64.plus_sign" (result i64) (return (i64.const +42)))
)

(assert_return (invoke "i32.test") (i32.const 195940365))
(assert_return (invoke "i32.umax") (i32.const -1))
(assert_return (invoke "i32.smax") (i32.const 2147483647))
(assert_return (invoke "i32.neg_smax") (i32.const -2147483647))
(assert_return (invoke "i32.smin") (i32.const -2147483648))
(assert_return (invoke "i32.alt_smin") (i32.const -2147483648))
(assert_return (invoke "i32.inc_smin") (i32.const -2147483647))
(assert_return (invoke "i32.neg_zero") (i32.const 0))
(assert_return (invoke "i32.not_octal") (i32.const 10))
(assert_return (invoke "i32.unsigned_decimal") (i32.const -1))
(assert_return (invoke "i32.plus_sign") (i32.const 42))

(assert_return (invoke "i64.test") (i64.const 913028331277281902))
(assert_return (invoke "i64.umax") (i64.const -1))
(assert_return (invoke "i64.smax") (i64.const 9223372036854775807))
(assert_return (invoke "i64.neg_smax") (i64.const -9223372036854775807))
(assert_return (invoke "i64.smin") (i64.const -9223372036854775808))
(assert_return (invoke "i64.alt_smin") (i64.const -9223372036854775808))
(assert_return (invoke "i64.inc_smin") (i64.const -9223372036854775807))
(assert_return (invoke "i64.neg_zero") (i64.const 0))
(assert_return (invoke "i64.not_octal") (i64.const 10))
(assert_return (invoke "i64.unsigned_decimal") (i64.const -1))
(assert_return (invoke "i64.plus_sign") (i64.const 42))
