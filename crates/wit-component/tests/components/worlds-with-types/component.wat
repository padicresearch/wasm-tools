(component
  (type (;0;) u32)
  (import "t" (type (;1;) (eq 0)))
  (type (;2;) (record (field "x" 1)))
  (import "r" (type (;3;) (eq 2)))
  (core module (;0;)
    (type (;0;) (func (param i32) (result i32)))
    (export "a" (func 0))
    (func (;0;) (type 0) (param i32) (result i32)
      i32.const 1
    )
    (@producers
      (processed-by "wit-component" "$CARGO_PKG_VERSION")
      (processed-by "my-fake-bindgen" "123.45")
    )
  )
  (core instance (;0;) (instantiate 0))
  (type (;4;) (func (param "r" 3) (result 1)))
  (alias core export 0 "a" (core func (;0;)))
  (func (;0;) (type 4) (canon lift (core func 0)))
  (export (;1;) "a" (func 0))
  (@producers
    (processed-by "wit-component" "$CARGO_PKG_VERSION")
  )
)
