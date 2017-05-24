importall Base
function !(e1::Expr)
    Expr(:call,:!,e1)
end
function ($)(e1::Expr,o2::Any)
    Expr(:call,:$,e1,expr(o2))
end
function ($)(o1::Any,e2::Expr)
    Expr(:call,:$,expr(o1),e2)
end
function ($)(e1::Expr,e2::Expr)
    Expr(:call,:$,e1,e2)
end
function ($)(e1::Expr)
    Expr(:call,:$,e1)
end
function (&)(e1::Expr,o2::Any)
    Expr(:call,:&,e1,expr(o2))
end
function (&)(o1::Any,e2::Expr)
    Expr(:call,:&,expr(o1),e2)
end
function (&)(e1::Expr,e2::Expr)
    Expr(:call,:&,e1,e2)
end
function (&)(e1::Expr)
    Expr(:call,:&,e1)
end
function *(e1::Expr,o2::Any)
    Expr(:call,:*,e1,expr(o2))
end
function *(o1::Any,e2::Expr)
    Expr(:call,:*,expr(o1),e2)
end
function *(e1::Expr,e2::Expr)
    Expr(:call,:*,e1,e2)
end
function *(e1::Expr)
    Expr(:call,:*,e1)
end
function +(e1::Expr,o2::Any)
    Expr(:call,:+,e1,expr(o2))
end
function +(o1::Any,e2::Expr)
    Expr(:call,:+,expr(o1),e2)
end
function +(e1::Expr,e2::Expr)
    Expr(:call,:+,e1,e2)
end
function +(e1::Expr)
    Expr(:call,:+,e1)
end
function (-)(e1::Expr,o2::Any,o3::Any,o4::Any)
    Expr(:call,:-,e1,expr(o2),expr(o3),expr(o4))
end
function (-)(o1::Any,e2::Expr,o3::Any,o4::Any)
    Expr(:call,:-,expr(o1),e2,expr(o3),expr(o4))
end
function (-)(e1::Expr,e2::Expr,o3::Any,o4::Any)
    Expr(:call,:-,e1,e2,expr(o3),expr(o4))
end
function (-)(o1::Any,o2::Any,e3::Expr,o4::Any)
    Expr(:call,:-,expr(o1),expr(o2),e3,expr(o4))
end
function (-)(e1::Expr,o2::Any,e3::Expr,o4::Any)
    Expr(:call,:-,e1,expr(o2),e3,expr(o4))
end
function (-)(o1::Any,e2::Expr,e3::Expr,o4::Any)
    Expr(:call,:-,expr(o1),e2,e3,expr(o4))
end
function (-)(e1::Expr,e2::Expr,e3::Expr,o4::Any)
    Expr(:call,:-,e1,e2,e3,expr(o4))
end
function (-)(o1::Any,o2::Any,o3::Any,e4::Expr)
    Expr(:call,:-,expr(o1),expr(o2),expr(o3),e4)
end
function (-)(e1::Expr,o2::Any,o3::Any,e4::Expr)
    Expr(:call,:-,e1,expr(o2),expr(o3),e4)
end
function (-)(o1::Any,e2::Expr,o3::Any,e4::Expr)
    Expr(:call,:-,expr(o1),e2,expr(o3),e4)
end
function (-)(e1::Expr,e2::Expr,o3::Any,e4::Expr)
    Expr(:call,:-,e1,e2,expr(o3),e4)
end
function (-)(o1::Any,o2::Any,e3::Expr,e4::Expr)
    Expr(:call,:-,expr(o1),expr(o2),e3,e4)
end
function (-)(e1::Expr,o2::Any,e3::Expr,e4::Expr)
    Expr(:call,:-,e1,expr(o2),e3,e4)
end
function (-)(o1::Any,e2::Expr,e3::Expr,e4::Expr)
    Expr(:call,:-,expr(o1),e2,e3,e4)
end
function (-)(e1::Expr,e2::Expr,e3::Expr,e4::Expr)
    Expr(:call,:-,e1,e2,e3,e4)
end
function (-)(e1::Expr,o2::Any)
    Expr(:call,:-,e1,expr(o2))
end
function (-)(o1::Any,e2::Expr)
    Expr(:call,:-,expr(o1),e2)
end
function (-)(e1::Expr,e2::Expr)
    Expr(:call,:-,e1,e2)
end
function (-)(e1::Expr,o2::Any,o3::Any)
    Expr(:call,:-,e1,expr(o2),expr(o3))
end
function (-)(o1::Any,e2::Expr,o3::Any)
    Expr(:call,:-,expr(o1),e2,expr(o3))
end
function (-)(e1::Expr,e2::Expr,o3::Any)
    Expr(:call,:-,e1,e2,expr(o3))
end
function (-)(o1::Any,o2::Any,e3::Expr)
    Expr(:call,:-,expr(o1),expr(o2),e3)
end
function (-)(e1::Expr,o2::Any,e3::Expr)
    Expr(:call,:-,e1,expr(o2),e3)
end
function (-)(o1::Any,e2::Expr,e3::Expr)
    Expr(:call,:-,expr(o1),e2,e3)
end
function (-)(e1::Expr,e2::Expr,e3::Expr)
    Expr(:call,:-,e1,e2,e3)
end
function (-)(e1::Expr)
    Expr(:call,:-,e1)
end
function /(e1::Expr,o2::Any)
    Expr(:call,:/,e1,expr(o2))
end
function /(o1::Any,e2::Expr)
    Expr(:call,:/,expr(o1),e2)
end
function /(e1::Expr,e2::Expr)
    Expr(:call,:/,e1,e2)
end
function //(e1::Expr,o2::Any)
    Expr(:call,://,e1,expr(o2))
end
function //(o1::Any,e2::Expr)
    Expr(:call,://,expr(o1),e2)
end
function //(e1::Expr,e2::Expr)
    Expr(:call,://,e1,e2)
end
function <<(e1::Expr,o2::Any)
    Expr(:call,:<<,e1,expr(o2))
end
function <<(o1::Any,e2::Expr)
    Expr(:call,:<<,expr(o1),e2)
end
function <<(e1::Expr,e2::Expr)
    Expr(:call,:<<,e1,e2)
end
function >>(e1::Expr,o2::Any)
    Expr(:call,:>>,e1,expr(o2))
end
function >>(o1::Any,e2::Expr)
    Expr(:call,:>>,expr(o1),e2)
end
function >>(e1::Expr,e2::Expr)
    Expr(:call,:>>,e1,e2)
end
function >>>(e1::Expr,o2::Any)
    Expr(:call,:>>>,e1,expr(o2))
end
function >>>(o1::Any,e2::Expr)
    Expr(:call,:>>>,expr(o1),e2)
end
function >>>(e1::Expr,e2::Expr)
    Expr(:call,:>>>,e1,e2)
end
function A_ldiv_B!(e1::Expr,o2::Any)
    Expr(:call,:A_ldiv_B!,e1,expr(o2))
end
function A_ldiv_B!(o1::Any,e2::Expr)
    Expr(:call,:A_ldiv_B!,expr(o1),e2)
end
function A_ldiv_B!(e1::Expr,e2::Expr)
    Expr(:call,:A_ldiv_B!,e1,e2)
end
function A_ldiv_B!(e1::Expr,o2::Any,o3::Any)
    Expr(:call,:A_ldiv_B!,e1,expr(o2),expr(o3))
end
function A_ldiv_B!(o1::Any,e2::Expr,o3::Any)
    Expr(:call,:A_ldiv_B!,expr(o1),e2,expr(o3))
end
function A_ldiv_B!(e1::Expr,e2::Expr,o3::Any)
    Expr(:call,:A_ldiv_B!,e1,e2,expr(o3))
end
function A_ldiv_B!(o1::Any,o2::Any,e3::Expr)
    Expr(:call,:A_ldiv_B!,expr(o1),expr(o2),e3)
end
function A_ldiv_B!(e1::Expr,o2::Any,e3::Expr)
    Expr(:call,:A_ldiv_B!,e1,expr(o2),e3)
end
function A_ldiv_B!(o1::Any,e2::Expr,e3::Expr)
    Expr(:call,:A_ldiv_B!,expr(o1),e2,e3)
end
function A_ldiv_B!(e1::Expr,e2::Expr,e3::Expr)
    Expr(:call,:A_ldiv_B!,e1,e2,e3)
end
function A_mul_B!(e1::Expr,o2::Any)
    Expr(:call,:A_mul_B!,e1,expr(o2))
end
function A_mul_B!(o1::Any,e2::Expr)
    Expr(:call,:A_mul_B!,expr(o1),e2)
end
function A_mul_B!(e1::Expr,e2::Expr)
    Expr(:call,:A_mul_B!,e1,e2)
end
function A_mul_B!(e1::Expr,o2::Any,o3::Any)
    Expr(:call,:A_mul_B!,e1,expr(o2),expr(o3))
end
function A_mul_B!(o1::Any,e2::Expr,o3::Any)
    Expr(:call,:A_mul_B!,expr(o1),e2,expr(o3))
end
function A_mul_B!(e1::Expr,e2::Expr,o3::Any)
    Expr(:call,:A_mul_B!,e1,e2,expr(o3))
end
function A_mul_B!(o1::Any,o2::Any,e3::Expr)
    Expr(:call,:A_mul_B!,expr(o1),expr(o2),e3)
end
function A_mul_B!(e1::Expr,o2::Any,e3::Expr)
    Expr(:call,:A_mul_B!,e1,expr(o2),e3)
end
function A_mul_B!(o1::Any,e2::Expr,e3::Expr)
    Expr(:call,:A_mul_B!,expr(o1),e2,e3)
end
function A_mul_B!(e1::Expr,e2::Expr,e3::Expr)
    Expr(:call,:A_mul_B!,e1,e2,e3)
end
function A_mul_B!(e1::Expr,o2::Any,o3::Any,o4::Any,o5::Any)
    Expr(:call,:A_mul_B!,e1,expr(o2),expr(o3),expr(o4),expr(o5))
end
function A_mul_B!(o1::Any,e2::Expr,o3::Any,o4::Any,o5::Any)
    Expr(:call,:A_mul_B!,expr(o1),e2,expr(o3),expr(o4),expr(o5))
end
function A_mul_B!(e1::Expr,e2::Expr,o3::Any,o4::Any,o5::Any)
    Expr(:call,:A_mul_B!,e1,e2,expr(o3),expr(o4),expr(o5))
end
function A_mul_B!(o1::Any,o2::Any,e3::Expr,o4::Any,o5::Any)
    Expr(:call,:A_mul_B!,expr(o1),expr(o2),e3,expr(o4),expr(o5))
end
function A_mul_B!(e1::Expr,o2::Any,e3::Expr,o4::Any,o5::Any)
    Expr(:call,:A_mul_B!,e1,expr(o2),e3,expr(o4),expr(o5))
end
function A_mul_B!(o1::Any,e2::Expr,e3::Expr,o4::Any,o5::Any)
    Expr(:call,:A_mul_B!,expr(o1),e2,e3,expr(o4),expr(o5))
end
function A_mul_B!(e1::Expr,e2::Expr,e3::Expr,o4::Any,o5::Any)
    Expr(:call,:A_mul_B!,e1,e2,e3,expr(o4),expr(o5))
end
function A_mul_B!(o1::Any,o2::Any,o3::Any,e4::Expr,o5::Any)
    Expr(:call,:A_mul_B!,expr(o1),expr(o2),expr(o3),e4,expr(o5))
end
function A_mul_B!(e1::Expr,o2::Any,o3::Any,e4::Expr,o5::Any)
    Expr(:call,:A_mul_B!,e1,expr(o2),expr(o3),e4,expr(o5))
end
function A_mul_B!(o1::Any,e2::Expr,o3::Any,e4::Expr,o5::Any)
    Expr(:call,:A_mul_B!,expr(o1),e2,expr(o3),e4,expr(o5))
end
function A_mul_B!(e1::Expr,e2::Expr,o3::Any,e4::Expr,o5::Any)
    Expr(:call,:A_mul_B!,e1,e2,expr(o3),e4,expr(o5))
end
function A_mul_B!(o1::Any,o2::Any,e3::Expr,e4::Expr,o5::Any)
    Expr(:call,:A_mul_B!,expr(o1),expr(o2),e3,e4,expr(o5))
end
function A_mul_B!(e1::Expr,o2::Any,e3::Expr,e4::Expr,o5::Any)
    Expr(:call,:A_mul_B!,e1,expr(o2),e3,e4,expr(o5))
end
function A_mul_B!(o1::Any,e2::Expr,e3::Expr,e4::Expr,o5::Any)
    Expr(:call,:A_mul_B!,expr(o1),e2,e3,e4,expr(o5))
end
function A_mul_B!(e1::Expr,e2::Expr,e3::Expr,e4::Expr,o5::Any)
    Expr(:call,:A_mul_B!,e1,e2,e3,e4,expr(o5))
end
function A_mul_B!(o1::Any,o2::Any,o3::Any,o4::Any,e5::Expr)
    Expr(:call,:A_mul_B!,expr(o1),expr(o2),expr(o3),expr(o4),e5)
end
function A_mul_B!(e1::Expr,o2::Any,o3::Any,o4::Any,e5::Expr)
    Expr(:call,:A_mul_B!,e1,expr(o2),expr(o3),expr(o4),e5)
end
function A_mul_B!(o1::Any,e2::Expr,o3::Any,o4::Any,e5::Expr)
    Expr(:call,:A_mul_B!,expr(o1),e2,expr(o3),expr(o4),e5)
end
function A_mul_B!(e1::Expr,e2::Expr,o3::Any,o4::Any,e5::Expr)
    Expr(:call,:A_mul_B!,e1,e2,expr(o3),expr(o4),e5)
end
function A_mul_B!(o1::Any,o2::Any,e3::Expr,o4::Any,e5::Expr)
    Expr(:call,:A_mul_B!,expr(o1),expr(o2),e3,expr(o4),e5)
end
function A_mul_B!(e1::Expr,o2::Any,e3::Expr,o4::Any,e5::Expr)
    Expr(:call,:A_mul_B!,e1,expr(o2),e3,expr(o4),e5)
end
function A_mul_B!(o1::Any,e2::Expr,e3::Expr,o4::Any,e5::Expr)
    Expr(:call,:A_mul_B!,expr(o1),e2,e3,expr(o4),e5)
end
function A_mul_B!(e1::Expr,e2::Expr,e3::Expr,o4::Any,e5::Expr)
    Expr(:call,:A_mul_B!,e1,e2,e3,expr(o4),e5)
end
function A_mul_B!(o1::Any,o2::Any,o3::Any,e4::Expr,e5::Expr)
    Expr(:call,:A_mul_B!,expr(o1),expr(o2),expr(o3),e4,e5)
end
function A_mul_B!(e1::Expr,o2::Any,o3::Any,e4::Expr,e5::Expr)
    Expr(:call,:A_mul_B!,e1,expr(o2),expr(o3),e4,e5)
end
function A_mul_B!(o1::Any,e2::Expr,o3::Any,e4::Expr,e5::Expr)
    Expr(:call,:A_mul_B!,expr(o1),e2,expr(o3),e4,e5)
end
function A_mul_B!(e1::Expr,e2::Expr,o3::Any,e4::Expr,e5::Expr)
    Expr(:call,:A_mul_B!,e1,e2,expr(o3),e4,e5)
end
function A_mul_B!(o1::Any,o2::Any,e3::Expr,e4::Expr,e5::Expr)
    Expr(:call,:A_mul_B!,expr(o1),expr(o2),e3,e4,e5)
end
function A_mul_B!(e1::Expr,o2::Any,e3::Expr,e4::Expr,e5::Expr)
    Expr(:call,:A_mul_B!,e1,expr(o2),e3,e4,e5)
end
function A_mul_B!(o1::Any,e2::Expr,e3::Expr,e4::Expr,e5::Expr)
    Expr(:call,:A_mul_B!,expr(o1),e2,e3,e4,e5)
end
function A_mul_B!(e1::Expr,e2::Expr,e3::Expr,e4::Expr,e5::Expr)
    Expr(:call,:A_mul_B!,e1,e2,e3,e4,e5)
end
function A_mul_Bc!(e1::Expr,o2::Any)
    Expr(:call,:A_mul_Bc!,e1,expr(o2))
end
function A_mul_Bc!(o1::Any,e2::Expr)
    Expr(:call,:A_mul_Bc!,expr(o1),e2)
end
function A_mul_Bc!(e1::Expr,e2::Expr)
    Expr(:call,:A_mul_Bc!,e1,e2)
end
function A_mul_Bc!(e1::Expr,o2::Any,o3::Any)
    Expr(:call,:A_mul_Bc!,e1,expr(o2),expr(o3))
end
function A_mul_Bc!(o1::Any,e2::Expr,o3::Any)
    Expr(:call,:A_mul_Bc!,expr(o1),e2,expr(o3))
end
function A_mul_Bc!(e1::Expr,e2::Expr,o3::Any)
    Expr(:call,:A_mul_Bc!,e1,e2,expr(o3))
end
function A_mul_Bc!(o1::Any,o2::Any,e3::Expr)
    Expr(:call,:A_mul_Bc!,expr(o1),expr(o2),e3)
end
function A_mul_Bc!(e1::Expr,o2::Any,e3::Expr)
    Expr(:call,:A_mul_Bc!,e1,expr(o2),e3)
end
function A_mul_Bc!(o1::Any,e2::Expr,e3::Expr)
    Expr(:call,:A_mul_Bc!,expr(o1),e2,e3)
end
function A_mul_Bc!(e1::Expr,e2::Expr,e3::Expr)
    Expr(:call,:A_mul_Bc!,e1,e2,e3)
end
function A_mul_Bt!(e1::Expr,o2::Any)
    Expr(:call,:A_mul_Bt!,e1,expr(o2))
end
function A_mul_Bt!(o1::Any,e2::Expr)
    Expr(:call,:A_mul_Bt!,expr(o1),e2)
end
function A_mul_Bt!(e1::Expr,e2::Expr)
    Expr(:call,:A_mul_Bt!,e1,e2)
end
function A_mul_Bt!(e1::Expr,o2::Any,o3::Any)
    Expr(:call,:A_mul_Bt!,e1,expr(o2),expr(o3))
end
function A_mul_Bt!(o1::Any,e2::Expr,o3::Any)
    Expr(:call,:A_mul_Bt!,expr(o1),e2,expr(o3))
end
function A_mul_Bt!(e1::Expr,e2::Expr,o3::Any)
    Expr(:call,:A_mul_Bt!,e1,e2,expr(o3))
end
function A_mul_Bt!(o1::Any,o2::Any,e3::Expr)
    Expr(:call,:A_mul_Bt!,expr(o1),expr(o2),e3)
end
function A_mul_Bt!(e1::Expr,o2::Any,e3::Expr)
    Expr(:call,:A_mul_Bt!,e1,expr(o2),e3)
end
function A_mul_Bt!(o1::Any,e2::Expr,e3::Expr)
    Expr(:call,:A_mul_Bt!,expr(o1),e2,e3)
end
function A_mul_Bt!(e1::Expr,e2::Expr,e3::Expr)
    Expr(:call,:A_mul_Bt!,e1,e2,e3)
end
function Ac_ldiv_B!(e1::Expr,o2::Any)
    Expr(:call,:Ac_ldiv_B!,e1,expr(o2))
end
function Ac_ldiv_B!(o1::Any,e2::Expr)
    Expr(:call,:Ac_ldiv_B!,expr(o1),e2)
end
function Ac_ldiv_B!(e1::Expr,e2::Expr)
    Expr(:call,:Ac_ldiv_B!,e1,e2)
end
function Ac_ldiv_B!(e1::Expr,o2::Any,o3::Any)
    Expr(:call,:Ac_ldiv_B!,e1,expr(o2),expr(o3))
end
function Ac_ldiv_B!(o1::Any,e2::Expr,o3::Any)
    Expr(:call,:Ac_ldiv_B!,expr(o1),e2,expr(o3))
end
function Ac_ldiv_B!(e1::Expr,e2::Expr,o3::Any)
    Expr(:call,:Ac_ldiv_B!,e1,e2,expr(o3))
end
function Ac_ldiv_B!(o1::Any,o2::Any,e3::Expr)
    Expr(:call,:Ac_ldiv_B!,expr(o1),expr(o2),e3)
end
function Ac_ldiv_B!(e1::Expr,o2::Any,e3::Expr)
    Expr(:call,:Ac_ldiv_B!,e1,expr(o2),e3)
end
function Ac_ldiv_B!(o1::Any,e2::Expr,e3::Expr)
    Expr(:call,:Ac_ldiv_B!,expr(o1),e2,e3)
end
function Ac_ldiv_B!(e1::Expr,e2::Expr,e3::Expr)
    Expr(:call,:Ac_ldiv_B!,e1,e2,e3)
end
function Ac_mul_B!(e1::Expr,o2::Any)
    Expr(:call,:Ac_mul_B!,e1,expr(o2))
end
function Ac_mul_B!(o1::Any,e2::Expr)
    Expr(:call,:Ac_mul_B!,expr(o1),e2)
end
function Ac_mul_B!(e1::Expr,e2::Expr)
    Expr(:call,:Ac_mul_B!,e1,e2)
end
function Ac_mul_B!(e1::Expr,o2::Any,o3::Any)
    Expr(:call,:Ac_mul_B!,e1,expr(o2),expr(o3))
end
function Ac_mul_B!(o1::Any,e2::Expr,o3::Any)
    Expr(:call,:Ac_mul_B!,expr(o1),e2,expr(o3))
end
function Ac_mul_B!(e1::Expr,e2::Expr,o3::Any)
    Expr(:call,:Ac_mul_B!,e1,e2,expr(o3))
end
function Ac_mul_B!(o1::Any,o2::Any,e3::Expr)
    Expr(:call,:Ac_mul_B!,expr(o1),expr(o2),e3)
end
function Ac_mul_B!(e1::Expr,o2::Any,e3::Expr)
    Expr(:call,:Ac_mul_B!,e1,expr(o2),e3)
end
function Ac_mul_B!(o1::Any,e2::Expr,e3::Expr)
    Expr(:call,:Ac_mul_B!,expr(o1),e2,e3)
end
function Ac_mul_B!(e1::Expr,e2::Expr,e3::Expr)
    Expr(:call,:Ac_mul_B!,e1,e2,e3)
end
function Ac_mul_B!(e1::Expr,o2::Any,o3::Any,o4::Any,o5::Any)
    Expr(:call,:Ac_mul_B!,e1,expr(o2),expr(o3),expr(o4),expr(o5))
end
function Ac_mul_B!(o1::Any,e2::Expr,o3::Any,o4::Any,o5::Any)
    Expr(:call,:Ac_mul_B!,expr(o1),e2,expr(o3),expr(o4),expr(o5))
end
function Ac_mul_B!(e1::Expr,e2::Expr,o3::Any,o4::Any,o5::Any)
    Expr(:call,:Ac_mul_B!,e1,e2,expr(o3),expr(o4),expr(o5))
end
function Ac_mul_B!(o1::Any,o2::Any,e3::Expr,o4::Any,o5::Any)
    Expr(:call,:Ac_mul_B!,expr(o1),expr(o2),e3,expr(o4),expr(o5))
end
function Ac_mul_B!(e1::Expr,o2::Any,e3::Expr,o4::Any,o5::Any)
    Expr(:call,:Ac_mul_B!,e1,expr(o2),e3,expr(o4),expr(o5))
end
function Ac_mul_B!(o1::Any,e2::Expr,e3::Expr,o4::Any,o5::Any)
    Expr(:call,:Ac_mul_B!,expr(o1),e2,e3,expr(o4),expr(o5))
end
function Ac_mul_B!(e1::Expr,e2::Expr,e3::Expr,o4::Any,o5::Any)
    Expr(:call,:Ac_mul_B!,e1,e2,e3,expr(o4),expr(o5))
end
function Ac_mul_B!(o1::Any,o2::Any,o3::Any,e4::Expr,o5::Any)
    Expr(:call,:Ac_mul_B!,expr(o1),expr(o2),expr(o3),e4,expr(o5))
end
function Ac_mul_B!(e1::Expr,o2::Any,o3::Any,e4::Expr,o5::Any)
    Expr(:call,:Ac_mul_B!,e1,expr(o2),expr(o3),e4,expr(o5))
end
function Ac_mul_B!(o1::Any,e2::Expr,o3::Any,e4::Expr,o5::Any)
    Expr(:call,:Ac_mul_B!,expr(o1),e2,expr(o3),e4,expr(o5))
end
function Ac_mul_B!(e1::Expr,e2::Expr,o3::Any,e4::Expr,o5::Any)
    Expr(:call,:Ac_mul_B!,e1,e2,expr(o3),e4,expr(o5))
end
function Ac_mul_B!(o1::Any,o2::Any,e3::Expr,e4::Expr,o5::Any)
    Expr(:call,:Ac_mul_B!,expr(o1),expr(o2),e3,e4,expr(o5))
end
function Ac_mul_B!(e1::Expr,o2::Any,e3::Expr,e4::Expr,o5::Any)
    Expr(:call,:Ac_mul_B!,e1,expr(o2),e3,e4,expr(o5))
end
function Ac_mul_B!(o1::Any,e2::Expr,e3::Expr,e4::Expr,o5::Any)
    Expr(:call,:Ac_mul_B!,expr(o1),e2,e3,e4,expr(o5))
end
function Ac_mul_B!(e1::Expr,e2::Expr,e3::Expr,e4::Expr,o5::Any)
    Expr(:call,:Ac_mul_B!,e1,e2,e3,e4,expr(o5))
end
function Ac_mul_B!(o1::Any,o2::Any,o3::Any,o4::Any,e5::Expr)
    Expr(:call,:Ac_mul_B!,expr(o1),expr(o2),expr(o3),expr(o4),e5)
end
function Ac_mul_B!(e1::Expr,o2::Any,o3::Any,o4::Any,e5::Expr)
    Expr(:call,:Ac_mul_B!,e1,expr(o2),expr(o3),expr(o4),e5)
end
function Ac_mul_B!(o1::Any,e2::Expr,o3::Any,o4::Any,e5::Expr)
    Expr(:call,:Ac_mul_B!,expr(o1),e2,expr(o3),expr(o4),e5)
end
function Ac_mul_B!(e1::Expr,e2::Expr,o3::Any,o4::Any,e5::Expr)
    Expr(:call,:Ac_mul_B!,e1,e2,expr(o3),expr(o4),e5)
end
function Ac_mul_B!(o1::Any,o2::Any,e3::Expr,o4::Any,e5::Expr)
    Expr(:call,:Ac_mul_B!,expr(o1),expr(o2),e3,expr(o4),e5)
end
function Ac_mul_B!(e1::Expr,o2::Any,e3::Expr,o4::Any,e5::Expr)
    Expr(:call,:Ac_mul_B!,e1,expr(o2),e3,expr(o4),e5)
end
function Ac_mul_B!(o1::Any,e2::Expr,e3::Expr,o4::Any,e5::Expr)
    Expr(:call,:Ac_mul_B!,expr(o1),e2,e3,expr(o4),e5)
end
function Ac_mul_B!(e1::Expr,e2::Expr,e3::Expr,o4::Any,e5::Expr)
    Expr(:call,:Ac_mul_B!,e1,e2,e3,expr(o4),e5)
end
function Ac_mul_B!(o1::Any,o2::Any,o3::Any,e4::Expr,e5::Expr)
    Expr(:call,:Ac_mul_B!,expr(o1),expr(o2),expr(o3),e4,e5)
end
function Ac_mul_B!(e1::Expr,o2::Any,o3::Any,e4::Expr,e5::Expr)
    Expr(:call,:Ac_mul_B!,e1,expr(o2),expr(o3),e4,e5)
end
function Ac_mul_B!(o1::Any,e2::Expr,o3::Any,e4::Expr,e5::Expr)
    Expr(:call,:Ac_mul_B!,expr(o1),e2,expr(o3),e4,e5)
end
function Ac_mul_B!(e1::Expr,e2::Expr,o3::Any,e4::Expr,e5::Expr)
    Expr(:call,:Ac_mul_B!,e1,e2,expr(o3),e4,e5)
end
function Ac_mul_B!(o1::Any,o2::Any,e3::Expr,e4::Expr,e5::Expr)
    Expr(:call,:Ac_mul_B!,expr(o1),expr(o2),e3,e4,e5)
end
function Ac_mul_B!(e1::Expr,o2::Any,e3::Expr,e4::Expr,e5::Expr)
    Expr(:call,:Ac_mul_B!,e1,expr(o2),e3,e4,e5)
end
function Ac_mul_B!(o1::Any,e2::Expr,e3::Expr,e4::Expr,e5::Expr)
    Expr(:call,:Ac_mul_B!,expr(o1),e2,e3,e4,e5)
end
function Ac_mul_B!(e1::Expr,e2::Expr,e3::Expr,e4::Expr,e5::Expr)
    Expr(:call,:Ac_mul_B!,e1,e2,e3,e4,e5)
end
function Ac_mul_Bc!(e1::Expr,o2::Any,o3::Any)
    Expr(:call,:Ac_mul_Bc!,e1,expr(o2),expr(o3))
end
function Ac_mul_Bc!(o1::Any,e2::Expr,o3::Any)
    Expr(:call,:Ac_mul_Bc!,expr(o1),e2,expr(o3))
end
function Ac_mul_Bc!(e1::Expr,e2::Expr,o3::Any)
    Expr(:call,:Ac_mul_Bc!,e1,e2,expr(o3))
end
function Ac_mul_Bc!(o1::Any,o2::Any,e3::Expr)
    Expr(:call,:Ac_mul_Bc!,expr(o1),expr(o2),e3)
end
function Ac_mul_Bc!(e1::Expr,o2::Any,e3::Expr)
    Expr(:call,:Ac_mul_Bc!,e1,expr(o2),e3)
end
function Ac_mul_Bc!(o1::Any,e2::Expr,e3::Expr)
    Expr(:call,:Ac_mul_Bc!,expr(o1),e2,e3)
end
function Ac_mul_Bc!(e1::Expr,e2::Expr,e3::Expr)
    Expr(:call,:Ac_mul_Bc!,e1,e2,e3)
end
function At_ldiv_B!(e1::Expr,o2::Any)
    Expr(:call,:At_ldiv_B!,e1,expr(o2))
end
function At_ldiv_B!(o1::Any,e2::Expr)
    Expr(:call,:At_ldiv_B!,expr(o1),e2)
end
function At_ldiv_B!(e1::Expr,e2::Expr)
    Expr(:call,:At_ldiv_B!,e1,e2)
end
function At_ldiv_B!(e1::Expr,o2::Any,o3::Any)
    Expr(:call,:At_ldiv_B!,e1,expr(o2),expr(o3))
end
function At_ldiv_B!(o1::Any,e2::Expr,o3::Any)
    Expr(:call,:At_ldiv_B!,expr(o1),e2,expr(o3))
end
function At_ldiv_B!(e1::Expr,e2::Expr,o3::Any)
    Expr(:call,:At_ldiv_B!,e1,e2,expr(o3))
end
function At_ldiv_B!(o1::Any,o2::Any,e3::Expr)
    Expr(:call,:At_ldiv_B!,expr(o1),expr(o2),e3)
end
function At_ldiv_B!(e1::Expr,o2::Any,e3::Expr)
    Expr(:call,:At_ldiv_B!,e1,expr(o2),e3)
end
function At_ldiv_B!(o1::Any,e2::Expr,e3::Expr)
    Expr(:call,:At_ldiv_B!,expr(o1),e2,e3)
end
function At_ldiv_B!(e1::Expr,e2::Expr,e3::Expr)
    Expr(:call,:At_ldiv_B!,e1,e2,e3)
end
function At_mul_B!(e1::Expr,o2::Any)
    Expr(:call,:At_mul_B!,e1,expr(o2))
end
function At_mul_B!(o1::Any,e2::Expr)
    Expr(:call,:At_mul_B!,expr(o1),e2)
end
function At_mul_B!(e1::Expr,e2::Expr)
    Expr(:call,:At_mul_B!,e1,e2)
end
function At_mul_B!(e1::Expr,o2::Any,o3::Any)
    Expr(:call,:At_mul_B!,e1,expr(o2),expr(o3))
end
function At_mul_B!(o1::Any,e2::Expr,o3::Any)
    Expr(:call,:At_mul_B!,expr(o1),e2,expr(o3))
end
function At_mul_B!(e1::Expr,e2::Expr,o3::Any)
    Expr(:call,:At_mul_B!,e1,e2,expr(o3))
end
function At_mul_B!(o1::Any,o2::Any,e3::Expr)
    Expr(:call,:At_mul_B!,expr(o1),expr(o2),e3)
end
function At_mul_B!(e1::Expr,o2::Any,e3::Expr)
    Expr(:call,:At_mul_B!,e1,expr(o2),e3)
end
function At_mul_B!(o1::Any,e2::Expr,e3::Expr)
    Expr(:call,:At_mul_B!,expr(o1),e2,e3)
end
function At_mul_B!(e1::Expr,e2::Expr,e3::Expr)
    Expr(:call,:At_mul_B!,e1,e2,e3)
end
function At_mul_B!(e1::Expr,o2::Any,o3::Any,o4::Any,o5::Any)
    Expr(:call,:At_mul_B!,e1,expr(o2),expr(o3),expr(o4),expr(o5))
end
function At_mul_B!(o1::Any,e2::Expr,o3::Any,o4::Any,o5::Any)
    Expr(:call,:At_mul_B!,expr(o1),e2,expr(o3),expr(o4),expr(o5))
end
function At_mul_B!(e1::Expr,e2::Expr,o3::Any,o4::Any,o5::Any)
    Expr(:call,:At_mul_B!,e1,e2,expr(o3),expr(o4),expr(o5))
end
function At_mul_B!(o1::Any,o2::Any,e3::Expr,o4::Any,o5::Any)
    Expr(:call,:At_mul_B!,expr(o1),expr(o2),e3,expr(o4),expr(o5))
end
function At_mul_B!(e1::Expr,o2::Any,e3::Expr,o4::Any,o5::Any)
    Expr(:call,:At_mul_B!,e1,expr(o2),e3,expr(o4),expr(o5))
end
function At_mul_B!(o1::Any,e2::Expr,e3::Expr,o4::Any,o5::Any)
    Expr(:call,:At_mul_B!,expr(o1),e2,e3,expr(o4),expr(o5))
end
function At_mul_B!(e1::Expr,e2::Expr,e3::Expr,o4::Any,o5::Any)
    Expr(:call,:At_mul_B!,e1,e2,e3,expr(o4),expr(o5))
end
function At_mul_B!(o1::Any,o2::Any,o3::Any,e4::Expr,o5::Any)
    Expr(:call,:At_mul_B!,expr(o1),expr(o2),expr(o3),e4,expr(o5))
end
function At_mul_B!(e1::Expr,o2::Any,o3::Any,e4::Expr,o5::Any)
    Expr(:call,:At_mul_B!,e1,expr(o2),expr(o3),e4,expr(o5))
end
function At_mul_B!(o1::Any,e2::Expr,o3::Any,e4::Expr,o5::Any)
    Expr(:call,:At_mul_B!,expr(o1),e2,expr(o3),e4,expr(o5))
end
function At_mul_B!(e1::Expr,e2::Expr,o3::Any,e4::Expr,o5::Any)
    Expr(:call,:At_mul_B!,e1,e2,expr(o3),e4,expr(o5))
end
function At_mul_B!(o1::Any,o2::Any,e3::Expr,e4::Expr,o5::Any)
    Expr(:call,:At_mul_B!,expr(o1),expr(o2),e3,e4,expr(o5))
end
function At_mul_B!(e1::Expr,o2::Any,e3::Expr,e4::Expr,o5::Any)
    Expr(:call,:At_mul_B!,e1,expr(o2),e3,e4,expr(o5))
end
function At_mul_B!(o1::Any,e2::Expr,e3::Expr,e4::Expr,o5::Any)
    Expr(:call,:At_mul_B!,expr(o1),e2,e3,e4,expr(o5))
end
function At_mul_B!(e1::Expr,e2::Expr,e3::Expr,e4::Expr,o5::Any)
    Expr(:call,:At_mul_B!,e1,e2,e3,e4,expr(o5))
end
function At_mul_B!(o1::Any,o2::Any,o3::Any,o4::Any,e5::Expr)
    Expr(:call,:At_mul_B!,expr(o1),expr(o2),expr(o3),expr(o4),e5)
end
function At_mul_B!(e1::Expr,o2::Any,o3::Any,o4::Any,e5::Expr)
    Expr(:call,:At_mul_B!,e1,expr(o2),expr(o3),expr(o4),e5)
end
function At_mul_B!(o1::Any,e2::Expr,o3::Any,o4::Any,e5::Expr)
    Expr(:call,:At_mul_B!,expr(o1),e2,expr(o3),expr(o4),e5)
end
function At_mul_B!(e1::Expr,e2::Expr,o3::Any,o4::Any,e5::Expr)
    Expr(:call,:At_mul_B!,e1,e2,expr(o3),expr(o4),e5)
end
function At_mul_B!(o1::Any,o2::Any,e3::Expr,o4::Any,e5::Expr)
    Expr(:call,:At_mul_B!,expr(o1),expr(o2),e3,expr(o4),e5)
end
function At_mul_B!(e1::Expr,o2::Any,e3::Expr,o4::Any,e5::Expr)
    Expr(:call,:At_mul_B!,e1,expr(o2),e3,expr(o4),e5)
end
function At_mul_B!(o1::Any,e2::Expr,e3::Expr,o4::Any,e5::Expr)
    Expr(:call,:At_mul_B!,expr(o1),e2,e3,expr(o4),e5)
end
function At_mul_B!(e1::Expr,e2::Expr,e3::Expr,o4::Any,e5::Expr)
    Expr(:call,:At_mul_B!,e1,e2,e3,expr(o4),e5)
end
function At_mul_B!(o1::Any,o2::Any,o3::Any,e4::Expr,e5::Expr)
    Expr(:call,:At_mul_B!,expr(o1),expr(o2),expr(o3),e4,e5)
end
function At_mul_B!(e1::Expr,o2::Any,o3::Any,e4::Expr,e5::Expr)
    Expr(:call,:At_mul_B!,e1,expr(o2),expr(o3),e4,e5)
end
function At_mul_B!(o1::Any,e2::Expr,o3::Any,e4::Expr,e5::Expr)
    Expr(:call,:At_mul_B!,expr(o1),e2,expr(o3),e4,e5)
end
function At_mul_B!(e1::Expr,e2::Expr,o3::Any,e4::Expr,e5::Expr)
    Expr(:call,:At_mul_B!,e1,e2,expr(o3),e4,e5)
end
function At_mul_B!(o1::Any,o2::Any,e3::Expr,e4::Expr,e5::Expr)
    Expr(:call,:At_mul_B!,expr(o1),expr(o2),e3,e4,e5)
end
function At_mul_B!(e1::Expr,o2::Any,e3::Expr,e4::Expr,e5::Expr)
    Expr(:call,:At_mul_B!,e1,expr(o2),e3,e4,e5)
end
function At_mul_B!(o1::Any,e2::Expr,e3::Expr,e4::Expr,e5::Expr)
    Expr(:call,:At_mul_B!,expr(o1),e2,e3,e4,e5)
end
function At_mul_B!(e1::Expr,e2::Expr,e3::Expr,e4::Expr,e5::Expr)
    Expr(:call,:At_mul_B!,e1,e2,e3,e4,e5)
end
function At_mul_Bt!(e1::Expr,o2::Any,o3::Any)
    Expr(:call,:At_mul_Bt!,e1,expr(o2),expr(o3))
end
function At_mul_Bt!(o1::Any,e2::Expr,o3::Any)
    Expr(:call,:At_mul_Bt!,expr(o1),e2,expr(o3))
end
function At_mul_Bt!(e1::Expr,e2::Expr,o3::Any)
    Expr(:call,:At_mul_Bt!,e1,e2,expr(o3))
end
function At_mul_Bt!(o1::Any,o2::Any,e3::Expr)
    Expr(:call,:At_mul_Bt!,expr(o1),expr(o2),e3)
end
function At_mul_Bt!(e1::Expr,o2::Any,e3::Expr)
    Expr(:call,:At_mul_Bt!,e1,expr(o2),e3)
end
function At_mul_Bt!(o1::Any,e2::Expr,e3::Expr)
    Expr(:call,:At_mul_Bt!,expr(o1),e2,e3)
end
function At_mul_Bt!(e1::Expr,e2::Expr,e3::Expr)
    Expr(:call,:At_mul_Bt!,e1,e2,e3)
end
function PipeBuffer(e1::Expr,o2::Any)
    Expr(:call,:PipeBuffer,e1,expr(o2))
end
function PipeBuffer(o1::Any,e2::Expr)
    Expr(:call,:PipeBuffer,expr(o1),e2)
end
function PipeBuffer(e1::Expr,e2::Expr)
    Expr(:call,:PipeBuffer,e1,e2)
end
function PipeBuffer(e1::Expr)
    Expr(:call,:PipeBuffer,e1)
end
function ^(o1::Any,e2::Expr)
    Expr(:call,:^,expr(o1),e2)
end
function ^(e1::Expr,e2::Expr)
    Expr(:call,:^,e1,e2)
end
function __precompile__(e1::Expr)
    Expr(:call,:__precompile__,e1)
end
function abs(e1::Expr)
    Expr(:call,:abs,e1)
end
function abs2(e1::Expr)
    Expr(:call,:abs2,e1)
end
function abspath(e1::Expr,o2::Any)
    Expr(:call,:abspath,e1,expr(o2))
end
function abspath(o1::Any,e2::Expr)
    Expr(:call,:abspath,expr(o1),e2)
end
function abspath(e1::Expr,e2::Expr)
    Expr(:call,:abspath,e1,e2)
end
function abspath(e1::Expr)
    Expr(:call,:abspath,e1)
end
function accept(e1::Expr,o2::Any)
    Expr(:call,:accept,e1,expr(o2))
end
function accept(o1::Any,e2::Expr)
    Expr(:call,:accept,expr(o1),e2)
end
function accept(e1::Expr,e2::Expr)
    Expr(:call,:accept,e1,e2)
end
function accept(e1::Expr)
    Expr(:call,:accept,e1)
end
function acos(e1::Expr)
    Expr(:call,:acos,e1)
end
function acosh(e1::Expr)
    Expr(:call,:acosh,e1)
end
function acot(e1::Expr)
    Expr(:call,:acot,e1)
end
function acoth(e1::Expr)
    Expr(:call,:acoth,e1)
end
function acsc(e1::Expr)
    Expr(:call,:acsc,e1)
end
function acsch(e1::Expr)
    Expr(:call,:acsch,e1)
end
function addprocs(e1::Expr)
    Expr(:call,:addprocs,e1)
end
function airy(e1::Expr,o2::Any)
    Expr(:call,:airy,e1,expr(o2))
end
function airy(o1::Any,e2::Expr)
    Expr(:call,:airy,expr(o1),e2)
end
function airy(e1::Expr,e2::Expr)
    Expr(:call,:airy,e1,e2)
end
function all(e1::Expr,o2::Any,o3::Any)
    Expr(:call,:all,e1,expr(o2),expr(o3))
end
function all(o1::Any,e2::Expr,o3::Any)
    Expr(:call,:all,expr(o1),e2,expr(o3))
end
function all(e1::Expr,e2::Expr,o3::Any)
    Expr(:call,:all,e1,e2,expr(o3))
end
function all(e1::Expr,e2::Expr,e3::Expr)
    Expr(:call,:all,e1,e2,e3)
end
function all!(e1::Expr,o2::Any)
    Expr(:call,:all!,e1,expr(o2))
end
function all!(o1::Any,e2::Expr)
    Expr(:call,:all!,expr(o1),e2)
end
function all!(e1::Expr,e2::Expr)
    Expr(:call,:all!,e1,e2)
end
function all!(e1::Expr,o2::Any,o3::Any)
    Expr(:call,:all!,e1,expr(o2),expr(o3))
end
function all!(o1::Any,e2::Expr,o3::Any)
    Expr(:call,:all!,expr(o1),e2,expr(o3))
end
function all!(e1::Expr,e2::Expr,o3::Any)
    Expr(:call,:all!,e1,e2,expr(o3))
end
function all!(o1::Any,o2::Any,e3::Expr)
    Expr(:call,:all!,expr(o1),expr(o2),e3)
end
function all!(e1::Expr,o2::Any,e3::Expr)
    Expr(:call,:all!,e1,expr(o2),e3)
end
function all!(o1::Any,e2::Expr,e3::Expr)
    Expr(:call,:all!,expr(o1),e2,e3)
end
function all!(e1::Expr,e2::Expr,e3::Expr)
    Expr(:call,:all!,e1,e2,e3)
end
function angle(e1::Expr)
    Expr(:call,:angle,e1)
end
function any(e1::Expr,o2::Any,o3::Any)
    Expr(:call,:any,e1,expr(o2),expr(o3))
end
function any(o1::Any,e2::Expr,o3::Any)
    Expr(:call,:any,expr(o1),e2,expr(o3))
end
function any(e1::Expr,e2::Expr,o3::Any)
    Expr(:call,:any,e1,e2,expr(o3))
end
function any(e1::Expr,e2::Expr,e3::Expr)
    Expr(:call,:any,e1,e2,e3)
end
function any!(e1::Expr,o2::Any)
    Expr(:call,:any!,e1,expr(o2))
end
function any!(o1::Any,e2::Expr)
    Expr(:call,:any!,expr(o1),e2)
end
function any!(e1::Expr,e2::Expr)
    Expr(:call,:any!,e1,e2)
end
function any!(e1::Expr,o2::Any,o3::Any)
    Expr(:call,:any!,e1,expr(o2),expr(o3))
end
function any!(o1::Any,e2::Expr,o3::Any)
    Expr(:call,:any!,expr(o1),e2,expr(o3))
end
function any!(e1::Expr,e2::Expr,o3::Any)
    Expr(:call,:any!,e1,e2,expr(o3))
end
function any!(o1::Any,o2::Any,e3::Expr)
    Expr(:call,:any!,expr(o1),expr(o2),e3)
end
function any!(e1::Expr,o2::Any,e3::Expr)
    Expr(:call,:any!,e1,expr(o2),e3)
end
function any!(o1::Any,e2::Expr,e3::Expr)
    Expr(:call,:any!,expr(o1),e2,e3)
end
function any!(e1::Expr,e2::Expr,e3::Expr)
    Expr(:call,:any!,e1,e2,e3)
end
function append!(e1::Expr,o2::Any)
    Expr(:call,:append!,e1,expr(o2))
end
function append!(e1::Expr,e2::Expr)
    Expr(:call,:append!,e1,e2)
end
function apropos(e1::Expr,o2::Any)
    Expr(:call,:apropos,e1,expr(o2))
end
function apropos(e1::Expr,e2::Expr)
    Expr(:call,:apropos,e1,e2)
end
function ascii(e1::Expr,o2::Any)
    Expr(:call,:ascii,e1,expr(o2))
end
function ascii(o1::Any,e2::Expr)
    Expr(:call,:ascii,expr(o1),e2)
end
function ascii(e1::Expr,e2::Expr)
    Expr(:call,:ascii,e1,e2)
end
function asec(e1::Expr)
    Expr(:call,:asec,e1)
end
function asech(e1::Expr)
    Expr(:call,:asech,e1)
end
function asin(e1::Expr)
    Expr(:call,:asin,e1)
end
function asinh(e1::Expr)
    Expr(:call,:asinh,e1)
end
function atan(e1::Expr)
    Expr(:call,:atan,e1)
end
function atan2(e1::Expr,o2::Any)
    Expr(:call,:atan2,e1,expr(o2))
end
function atan2(o1::Any,e2::Expr)
    Expr(:call,:atan2,expr(o1),e2)
end
function atan2(e1::Expr,e2::Expr)
    Expr(:call,:atan2,e1,e2)
end
function atanh(e1::Expr)
    Expr(:call,:atanh,e1)
end
function atexit(e1::Expr)
    Expr(:call,:atexit,e1)
end
function atreplinit(e1::Expr)
    Expr(:call,:atreplinit,e1)
end
function base(e1::Expr,o2::Any,o3::Any,o4::Any)
    Expr(:call,:base,e1,expr(o2),expr(o3),expr(o4))
end
function base(o1::Any,e2::Expr,o3::Any,o4::Any)
    Expr(:call,:base,expr(o1),e2,expr(o3),expr(o4))
end
function base(e1::Expr,e2::Expr,o3::Any,o4::Any)
    Expr(:call,:base,e1,e2,expr(o3),expr(o4))
end
function base(o1::Any,o2::Any,e3::Expr,o4::Any)
    Expr(:call,:base,expr(o1),expr(o2),e3,expr(o4))
end
function base(e1::Expr,o2::Any,e3::Expr,o4::Any)
    Expr(:call,:base,e1,expr(o2),e3,expr(o4))
end
function base(o1::Any,e2::Expr,e3::Expr,o4::Any)
    Expr(:call,:base,expr(o1),e2,e3,expr(o4))
end
function base(e1::Expr,e2::Expr,e3::Expr,o4::Any)
    Expr(:call,:base,e1,e2,e3,expr(o4))
end
function base(o1::Any,o2::Any,o3::Any,e4::Expr)
    Expr(:call,:base,expr(o1),expr(o2),expr(o3),e4)
end
function base(e1::Expr,o2::Any,o3::Any,e4::Expr)
    Expr(:call,:base,e1,expr(o2),expr(o3),e4)
end
function base(o1::Any,e2::Expr,o3::Any,e4::Expr)
    Expr(:call,:base,expr(o1),e2,expr(o3),e4)
end
function base(e1::Expr,e2::Expr,o3::Any,e4::Expr)
    Expr(:call,:base,e1,e2,expr(o3),e4)
end
function base(o1::Any,o2::Any,e3::Expr,e4::Expr)
    Expr(:call,:base,expr(o1),expr(o2),e3,e4)
end
function base(e1::Expr,o2::Any,e3::Expr,e4::Expr)
    Expr(:call,:base,e1,expr(o2),e3,e4)
end
function base(o1::Any,e2::Expr,e3::Expr,e4::Expr)
    Expr(:call,:base,expr(o1),e2,e3,e4)
end
function base(e1::Expr,e2::Expr,e3::Expr,e4::Expr)
    Expr(:call,:base,e1,e2,e3,e4)
end
function base(e1::Expr,o2::Any)
    Expr(:call,:base,e1,expr(o2))
end
function base(o1::Any,e2::Expr)
    Expr(:call,:base,expr(o1),e2)
end
function base(e1::Expr,e2::Expr)
    Expr(:call,:base,e1,e2)
end
function base(e1::Expr,o2::Any,o3::Any)
    Expr(:call,:base,e1,expr(o2),expr(o3))
end
function base(o1::Any,e2::Expr,o3::Any)
    Expr(:call,:base,expr(o1),e2,expr(o3))
end
function base(e1::Expr,e2::Expr,o3::Any)
    Expr(:call,:base,e1,e2,expr(o3))
end
function base(o1::Any,o2::Any,e3::Expr)
    Expr(:call,:base,expr(o1),expr(o2),e3)
end
function base(e1::Expr,o2::Any,e3::Expr)
    Expr(:call,:base,e1,expr(o2),e3)
end
function base(o1::Any,e2::Expr,e3::Expr)
    Expr(:call,:base,expr(o1),e2,e3)
end
function base(e1::Expr,e2::Expr,e3::Expr)
    Expr(:call,:base,e1,e2,e3)
end
function basename(e1::Expr)
    Expr(:call,:basename,e1)
end
function besselh(e1::Expr,o2::Any,o3::Any)
    Expr(:call,:besselh,e1,expr(o2),expr(o3))
end
function besselh(o1::Any,e2::Expr,o3::Any)
    Expr(:call,:besselh,expr(o1),e2,expr(o3))
end
function besselh(e1::Expr,e2::Expr,o3::Any)
    Expr(:call,:besselh,e1,e2,expr(o3))
end
function besselh(o1::Any,o2::Any,e3::Expr)
    Expr(:call,:besselh,expr(o1),expr(o2),e3)
end
function besselh(e1::Expr,o2::Any,e3::Expr)
    Expr(:call,:besselh,e1,expr(o2),e3)
end
function besselh(o1::Any,e2::Expr,e3::Expr)
    Expr(:call,:besselh,expr(o1),e2,e3)
end
function besselh(e1::Expr,e2::Expr,e3::Expr)
    Expr(:call,:besselh,e1,e2,e3)
end
function besselhx(e1::Expr,o2::Any,o3::Any)
    Expr(:call,:besselhx,e1,expr(o2),expr(o3))
end
function besselhx(o1::Any,e2::Expr,o3::Any)
    Expr(:call,:besselhx,expr(o1),e2,expr(o3))
end
function besselhx(e1::Expr,e2::Expr,o3::Any)
    Expr(:call,:besselhx,e1,e2,expr(o3))
end
function besselhx(o1::Any,o2::Any,e3::Expr)
    Expr(:call,:besselhx,expr(o1),expr(o2),e3)
end
function besselhx(e1::Expr,o2::Any,e3::Expr)
    Expr(:call,:besselhx,e1,expr(o2),e3)
end
function besselhx(o1::Any,e2::Expr,e3::Expr)
    Expr(:call,:besselhx,expr(o1),e2,e3)
end
function besselhx(e1::Expr,e2::Expr,e3::Expr)
    Expr(:call,:besselhx,e1,e2,e3)
end
function besseli(e1::Expr,o2::Any)
    Expr(:call,:besseli,e1,expr(o2))
end
function besseli(o1::Any,e2::Expr)
    Expr(:call,:besseli,expr(o1),e2)
end
function besseli(e1::Expr,e2::Expr)
    Expr(:call,:besseli,e1,e2)
end
function besselix(e1::Expr,o2::Any)
    Expr(:call,:besselix,e1,expr(o2))
end
function besselix(o1::Any,e2::Expr)
    Expr(:call,:besselix,expr(o1),e2)
end
function besselix(e1::Expr,e2::Expr)
    Expr(:call,:besselix,e1,e2)
end
function besselj(e1::Expr,o2::Any)
    Expr(:call,:besselj,e1,expr(o2))
end
function besselj(o1::Any,e2::Expr)
    Expr(:call,:besselj,expr(o1),e2)
end
function besselj(e1::Expr,e2::Expr)
    Expr(:call,:besselj,e1,e2)
end
function besselj0(e1::Expr)
    Expr(:call,:besselj0,e1)
end
function besselj1(e1::Expr)
    Expr(:call,:besselj1,e1)
end
function besseljx(e1::Expr,o2::Any)
    Expr(:call,:besseljx,e1,expr(o2))
end
function besseljx(o1::Any,e2::Expr)
    Expr(:call,:besseljx,expr(o1),e2)
end
function besseljx(e1::Expr,e2::Expr)
    Expr(:call,:besseljx,e1,e2)
end
function besselk(e1::Expr,o2::Any)
    Expr(:call,:besselk,e1,expr(o2))
end
function besselk(o1::Any,e2::Expr)
    Expr(:call,:besselk,expr(o1),e2)
end
function besselk(e1::Expr,e2::Expr)
    Expr(:call,:besselk,e1,e2)
end
function besselkx(e1::Expr,o2::Any)
    Expr(:call,:besselkx,e1,expr(o2))
end
function besselkx(o1::Any,e2::Expr)
    Expr(:call,:besselkx,expr(o1),e2)
end
function besselkx(e1::Expr,e2::Expr)
    Expr(:call,:besselkx,e1,e2)
end
function bessely(e1::Expr,o2::Any)
    Expr(:call,:bessely,e1,expr(o2))
end
function bessely(o1::Any,e2::Expr)
    Expr(:call,:bessely,expr(o1),e2)
end
function bessely(e1::Expr,e2::Expr)
    Expr(:call,:bessely,e1,e2)
end
function bessely0(e1::Expr)
    Expr(:call,:bessely0,e1)
end
function bessely1(e1::Expr)
    Expr(:call,:bessely1,e1)
end
function besselyx(e1::Expr,o2::Any)
    Expr(:call,:besselyx,e1,expr(o2))
end
function besselyx(o1::Any,e2::Expr)
    Expr(:call,:besselyx,expr(o1),e2)
end
function besselyx(e1::Expr,e2::Expr)
    Expr(:call,:besselyx,e1,e2)
end
function beta(e1::Expr,o2::Any)
    Expr(:call,:beta,e1,expr(o2))
end
function beta(o1::Any,e2::Expr)
    Expr(:call,:beta,expr(o1),e2)
end
function beta(e1::Expr,e2::Expr)
    Expr(:call,:beta,e1,e2)
end
function bfft(e1::Expr,o2::Any)
    Expr(:call,:bfft,e1,expr(o2))
end
function bfft(e1::Expr,e2::Expr)
    Expr(:call,:bfft,e1,e2)
end
function bfft(e1::Expr)
    Expr(:call,:bfft,e1)
end
function bfft!(e1::Expr,o2::Any)
    Expr(:call,:bfft!,e1,expr(o2))
end
function bfft!(e1::Expr,e2::Expr)
    Expr(:call,:bfft!,e1,e2)
end
function bfft!(e1::Expr)
    Expr(:call,:bfft!,e1)
end
function big(e1::Expr)
    Expr(:call,:big,e1)
end
function bin(e1::Expr,o2::Any)
    Expr(:call,:bin,e1,expr(o2))
end
function bin(o1::Any,e2::Expr)
    Expr(:call,:bin,expr(o1),e2)
end
function bin(e1::Expr,e2::Expr)
    Expr(:call,:bin,e1,e2)
end
function bin(e1::Expr,o2::Any,o3::Any)
    Expr(:call,:bin,e1,expr(o2),expr(o3))
end
function bin(o1::Any,e2::Expr,o3::Any)
    Expr(:call,:bin,expr(o1),e2,expr(o3))
end
function bin(e1::Expr,e2::Expr,o3::Any)
    Expr(:call,:bin,e1,e2,expr(o3))
end
function bin(o1::Any,o2::Any,e3::Expr)
    Expr(:call,:bin,expr(o1),expr(o2),e3)
end
function bin(e1::Expr,o2::Any,e3::Expr)
    Expr(:call,:bin,e1,expr(o2),e3)
end
function bin(o1::Any,e2::Expr,e3::Expr)
    Expr(:call,:bin,expr(o1),e2,e3)
end
function bin(e1::Expr,e2::Expr,e3::Expr)
    Expr(:call,:bin,e1,e2,e3)
end
function bin(e1::Expr)
    Expr(:call,:bin,e1)
end
function bind(e1::Expr,o2::Any)
    Expr(:call,:bind,e1,expr(o2))
end
function bind(o1::Any,e2::Expr)
    Expr(:call,:bind,expr(o1),e2)
end
function bind(e1::Expr,e2::Expr)
    Expr(:call,:bind,e1,e2)
end
function bind(e1::Expr,o2::Any,o3::Any)
    Expr(:call,:bind,e1,expr(o2),expr(o3))
end
function bind(o1::Any,e2::Expr,o3::Any)
    Expr(:call,:bind,expr(o1),e2,expr(o3))
end
function bind(e1::Expr,e2::Expr,o3::Any)
    Expr(:call,:bind,e1,e2,expr(o3))
end
function bind(o1::Any,o2::Any,e3::Expr)
    Expr(:call,:bind,expr(o1),expr(o2),e3)
end
function bind(e1::Expr,o2::Any,e3::Expr)
    Expr(:call,:bind,e1,expr(o2),e3)
end
function bind(o1::Any,e2::Expr,e3::Expr)
    Expr(:call,:bind,expr(o1),e2,e3)
end
function bind(e1::Expr,e2::Expr,e3::Expr)
    Expr(:call,:bind,e1,e2,e3)
end
function binomial(e1::Expr,o2::Any)
    Expr(:call,:binomial,e1,expr(o2))
end
function binomial(o1::Any,e2::Expr)
    Expr(:call,:binomial,expr(o1),e2)
end
function binomial(e1::Expr,e2::Expr)
    Expr(:call,:binomial,e1,e2)
end
function bitpack(e1::Expr)
    Expr(:call,:bitpack,e1)
end
function bitrand(e1::Expr,o2::Any)
    Expr(:call,:bitrand,e1,expr(o2))
end
function bitrand(o1::Any,e2::Expr)
    Expr(:call,:bitrand,expr(o1),e2)
end
function bitrand(e1::Expr,e2::Expr)
    Expr(:call,:bitrand,e1,e2)
end
function bitrand(e1::Expr)
    Expr(:call,:bitrand,e1)
end
function bits(e1::Expr)
    Expr(:call,:bits,e1)
end
function bitunpack(e1::Expr)
    Expr(:call,:bitunpack,e1)
end
function bkfact(e1::Expr,o2::Any,o3::Any,o4::Any)
    Expr(:call,:bkfact,e1,expr(o2),expr(o3),expr(o4))
end
function bkfact(o1::Any,e2::Expr,o3::Any,o4::Any)
    Expr(:call,:bkfact,expr(o1),e2,expr(o3),expr(o4))
end
function bkfact(e1::Expr,e2::Expr,o3::Any,o4::Any)
    Expr(:call,:bkfact,e1,e2,expr(o3),expr(o4))
end
function bkfact(o1::Any,o2::Any,e3::Expr,o4::Any)
    Expr(:call,:bkfact,expr(o1),expr(o2),e3,expr(o4))
end
function bkfact(e1::Expr,o2::Any,e3::Expr,o4::Any)
    Expr(:call,:bkfact,e1,expr(o2),e3,expr(o4))
end
function bkfact(o1::Any,e2::Expr,e3::Expr,o4::Any)
    Expr(:call,:bkfact,expr(o1),e2,e3,expr(o4))
end
function bkfact(e1::Expr,e2::Expr,e3::Expr,o4::Any)
    Expr(:call,:bkfact,e1,e2,e3,expr(o4))
end
function bkfact(o1::Any,o2::Any,o3::Any,e4::Expr)
    Expr(:call,:bkfact,expr(o1),expr(o2),expr(o3),e4)
end
function bkfact(e1::Expr,o2::Any,o3::Any,e4::Expr)
    Expr(:call,:bkfact,e1,expr(o2),expr(o3),e4)
end
function bkfact(o1::Any,e2::Expr,o3::Any,e4::Expr)
    Expr(:call,:bkfact,expr(o1),e2,expr(o3),e4)
end
function bkfact(e1::Expr,e2::Expr,o3::Any,e4::Expr)
    Expr(:call,:bkfact,e1,e2,expr(o3),e4)
end
function bkfact(o1::Any,o2::Any,e3::Expr,e4::Expr)
    Expr(:call,:bkfact,expr(o1),expr(o2),e3,e4)
end
function bkfact(e1::Expr,o2::Any,e3::Expr,e4::Expr)
    Expr(:call,:bkfact,e1,expr(o2),e3,e4)
end
function bkfact(o1::Any,e2::Expr,e3::Expr,e4::Expr)
    Expr(:call,:bkfact,expr(o1),e2,e3,e4)
end
function bkfact(e1::Expr,e2::Expr,e3::Expr,e4::Expr)
    Expr(:call,:bkfact,e1,e2,e3,e4)
end
function bkfact(e1::Expr,o2::Any)
    Expr(:call,:bkfact,e1,expr(o2))
end
function bkfact(o1::Any,e2::Expr)
    Expr(:call,:bkfact,expr(o1),e2)
end
function bkfact(e1::Expr,e2::Expr)
    Expr(:call,:bkfact,e1,e2)
end
function bkfact(e1::Expr,o2::Any,o3::Any)
    Expr(:call,:bkfact,e1,expr(o2),expr(o3))
end
function bkfact(o1::Any,e2::Expr,o3::Any)
    Expr(:call,:bkfact,expr(o1),e2,expr(o3))
end
function bkfact(e1::Expr,e2::Expr,o3::Any)
    Expr(:call,:bkfact,e1,e2,expr(o3))
end
function bkfact(o1::Any,o2::Any,e3::Expr)
    Expr(:call,:bkfact,expr(o1),expr(o2),e3)
end
function bkfact(e1::Expr,o2::Any,e3::Expr)
    Expr(:call,:bkfact,e1,expr(o2),e3)
end
function bkfact(o1::Any,e2::Expr,e3::Expr)
    Expr(:call,:bkfact,expr(o1),e2,e3)
end
function bkfact(e1::Expr,e2::Expr,e3::Expr)
    Expr(:call,:bkfact,e1,e2,e3)
end
function bkfact(e1::Expr)
    Expr(:call,:bkfact,e1)
end
function bkfact!(e1::Expr,o2::Any,o3::Any,o4::Any)
    Expr(:call,:bkfact!,e1,expr(o2),expr(o3),expr(o4))
end
function bkfact!(o1::Any,e2::Expr,o3::Any,o4::Any)
    Expr(:call,:bkfact!,expr(o1),e2,expr(o3),expr(o4))
end
function bkfact!(e1::Expr,e2::Expr,o3::Any,o4::Any)
    Expr(:call,:bkfact!,e1,e2,expr(o3),expr(o4))
end
function bkfact!(o1::Any,o2::Any,e3::Expr,o4::Any)
    Expr(:call,:bkfact!,expr(o1),expr(o2),e3,expr(o4))
end
function bkfact!(e1::Expr,o2::Any,e3::Expr,o4::Any)
    Expr(:call,:bkfact!,e1,expr(o2),e3,expr(o4))
end
function bkfact!(o1::Any,e2::Expr,e3::Expr,o4::Any)
    Expr(:call,:bkfact!,expr(o1),e2,e3,expr(o4))
end
function bkfact!(e1::Expr,e2::Expr,e3::Expr,o4::Any)
    Expr(:call,:bkfact!,e1,e2,e3,expr(o4))
end
function bkfact!(o1::Any,o2::Any,o3::Any,e4::Expr)
    Expr(:call,:bkfact!,expr(o1),expr(o2),expr(o3),e4)
end
function bkfact!(e1::Expr,o2::Any,o3::Any,e4::Expr)
    Expr(:call,:bkfact!,e1,expr(o2),expr(o3),e4)
end
function bkfact!(o1::Any,e2::Expr,o3::Any,e4::Expr)
    Expr(:call,:bkfact!,expr(o1),e2,expr(o3),e4)
end
function bkfact!(e1::Expr,e2::Expr,o3::Any,e4::Expr)
    Expr(:call,:bkfact!,e1,e2,expr(o3),e4)
end
function bkfact!(o1::Any,o2::Any,e3::Expr,e4::Expr)
    Expr(:call,:bkfact!,expr(o1),expr(o2),e3,e4)
end
function bkfact!(e1::Expr,o2::Any,e3::Expr,e4::Expr)
    Expr(:call,:bkfact!,e1,expr(o2),e3,e4)
end
function bkfact!(o1::Any,e2::Expr,e3::Expr,e4::Expr)
    Expr(:call,:bkfact!,expr(o1),e2,e3,e4)
end
function bkfact!(e1::Expr,e2::Expr,e3::Expr,e4::Expr)
    Expr(:call,:bkfact!,e1,e2,e3,e4)
end
function bkfact!(e1::Expr,o2::Any)
    Expr(:call,:bkfact!,e1,expr(o2))
end
function bkfact!(o1::Any,e2::Expr)
    Expr(:call,:bkfact!,expr(o1),e2)
end
function bkfact!(e1::Expr,e2::Expr)
    Expr(:call,:bkfact!,e1,e2)
end
function bkfact!(e1::Expr,o2::Any,o3::Any)
    Expr(:call,:bkfact!,e1,expr(o2),expr(o3))
end
function bkfact!(o1::Any,e2::Expr,o3::Any)
    Expr(:call,:bkfact!,expr(o1),e2,expr(o3))
end
function bkfact!(e1::Expr,e2::Expr,o3::Any)
    Expr(:call,:bkfact!,e1,e2,expr(o3))
end
function bkfact!(o1::Any,o2::Any,e3::Expr)
    Expr(:call,:bkfact!,expr(o1),expr(o2),e3)
end
function bkfact!(e1::Expr,o2::Any,e3::Expr)
    Expr(:call,:bkfact!,e1,expr(o2),e3)
end
function bkfact!(o1::Any,e2::Expr,e3::Expr)
    Expr(:call,:bkfact!,expr(o1),e2,e3)
end
function bkfact!(e1::Expr,e2::Expr,e3::Expr)
    Expr(:call,:bkfact!,e1,e2,e3)
end
function bkfact!(e1::Expr)
    Expr(:call,:bkfact!,e1)
end
function blkdiag(e1::Expr)
    Expr(:call,:blkdiag,e1)
end
function brfft(e1::Expr,o2::Any)
    Expr(:call,:brfft,e1,expr(o2))
end
function brfft(o1::Any,e2::Expr)
    Expr(:call,:brfft,expr(o1),e2)
end
function brfft(e1::Expr,e2::Expr)
    Expr(:call,:brfft,e1,e2)
end
function brfft(e1::Expr,o2::Any,o3::Any)
    Expr(:call,:brfft,e1,expr(o2),expr(o3))
end
function brfft(o1::Any,e2::Expr,o3::Any)
    Expr(:call,:brfft,expr(o1),e2,expr(o3))
end
function brfft(e1::Expr,e2::Expr,o3::Any)
    Expr(:call,:brfft,e1,e2,expr(o3))
end
function brfft(e1::Expr,e2::Expr,e3::Expr)
    Expr(:call,:brfft,e1,e2,e3)
end
function broadcast!(o1::Any,e2::Expr,o3::Any,o4::Any)
    Expr(:call,:broadcast!,expr(o1),e2,expr(o3),expr(o4))
end
function broadcast!(e1::Expr,e2::Expr,o3::Any,o4::Any)
    Expr(:call,:broadcast!,e1,e2,expr(o3),expr(o4))
end
function broadcast!(o1::Any,e2::Expr,e3::Expr,o4::Any)
    Expr(:call,:broadcast!,expr(o1),e2,e3,expr(o4))
end
function broadcast!(e1::Expr,e2::Expr,e3::Expr,o4::Any)
    Expr(:call,:broadcast!,e1,e2,e3,expr(o4))
end
function broadcast!(o1::Any,e2::Expr,o3::Any,e4::Expr)
    Expr(:call,:broadcast!,expr(o1),e2,expr(o3),e4)
end
function broadcast!(e1::Expr,e2::Expr,o3::Any,e4::Expr)
    Expr(:call,:broadcast!,e1,e2,expr(o3),e4)
end
function broadcast!(o1::Any,e2::Expr,e3::Expr,e4::Expr)
    Expr(:call,:broadcast!,expr(o1),e2,e3,e4)
end
function broadcast!(e1::Expr,e2::Expr,e3::Expr,e4::Expr)
    Expr(:call,:broadcast!,e1,e2,e3,e4)
end
function broadcast!(o1::Any,e2::Expr)
    Expr(:call,:broadcast!,expr(o1),e2)
end
function broadcast!(e1::Expr,e2::Expr)
    Expr(:call,:broadcast!,e1,e2)
end
function broadcast!(o1::Any,e2::Expr,o3::Any)
    Expr(:call,:broadcast!,expr(o1),e2,expr(o3))
end
function broadcast!(o1::Any,e2::Expr,e3::Expr)
    Expr(:call,:broadcast!,expr(o1),e2,e3)
end
function broadcast!(e1::Expr,e2::Expr,e3::Expr)
    Expr(:call,:broadcast!,e1,e2,e3)
end
function broadcast_getindex(e1::Expr,o2::Any)
    Expr(:call,:broadcast_getindex,e1,expr(o2))
end
function broadcast_getindex(o1::Any,e2::Expr)
    Expr(:call,:broadcast_getindex,expr(o1),e2)
end
function broadcast_getindex(e1::Expr,e2::Expr)
    Expr(:call,:broadcast_getindex,e1,e2)
end
function broadcast_setindex!(e1::Expr,o2::Any,o3::Any)
    Expr(:call,:broadcast_setindex!,e1,expr(o2),expr(o3))
end
function broadcast_setindex!(o1::Any,o2::Any,e3::Expr)
    Expr(:call,:broadcast_setindex!,expr(o1),expr(o2),e3)
end
function broadcast_setindex!(e1::Expr,o2::Any,e3::Expr)
    Expr(:call,:broadcast_setindex!,e1,expr(o2),e3)
end
function broadcast_setindex!(e1::Expr,e2::Expr,e3::Expr)
    Expr(:call,:broadcast_setindex!,e1,e2,e3)
end
function bswap(e1::Expr)
    Expr(:call,:bswap,e1)
end
function bytes2hex(e1::Expr)
    Expr(:call,:bytes2hex,e1)
end
function bytestring(e1::Expr,o2::Any)
    Expr(:call,:bytestring,e1,expr(o2))
end
function bytestring(o1::Any,e2::Expr)
    Expr(:call,:bytestring,expr(o1),e2)
end
function bytestring(e1::Expr,e2::Expr)
    Expr(:call,:bytestring,e1,e2)
end
function bytestring(e1::Expr)
    Expr(:call,:bytestring,e1)
end
function catch_stacktrace(e1::Expr)
    Expr(:call,:catch_stacktrace,e1)
end
function cbrt(e1::Expr)
    Expr(:call,:cbrt,e1)
end
function cd(e1::Expr,o2::Any)
    Expr(:call,:cd,e1,expr(o2))
end
function cd(o1::Any,e2::Expr)
    Expr(:call,:cd,expr(o1),e2)
end
function cd(e1::Expr,e2::Expr)
    Expr(:call,:cd,e1,e2)
end
function cd(e1::Expr)
    Expr(:call,:cd,e1)
end
function ceil(e1::Expr,o2::Any)
    Expr(:call,:ceil,e1,expr(o2))
end
function ceil(o1::Any,e2::Expr)
    Expr(:call,:ceil,expr(o1),e2)
end
function ceil(e1::Expr,e2::Expr)
    Expr(:call,:ceil,e1,e2)
end
function ceil(e1::Expr,o2::Any,o3::Any)
    Expr(:call,:ceil,e1,expr(o2),expr(o3))
end
function ceil(o1::Any,e2::Expr,o3::Any)
    Expr(:call,:ceil,expr(o1),e2,expr(o3))
end
function ceil(e1::Expr,e2::Expr,o3::Any)
    Expr(:call,:ceil,e1,e2,expr(o3))
end
function ceil(o1::Any,o2::Any,e3::Expr)
    Expr(:call,:ceil,expr(o1),expr(o2),e3)
end
function ceil(e1::Expr,o2::Any,e3::Expr)
    Expr(:call,:ceil,e1,expr(o2),e3)
end
function ceil(o1::Any,e2::Expr,e3::Expr)
    Expr(:call,:ceil,expr(o1),e2,e3)
end
function ceil(e1::Expr,e2::Expr,e3::Expr)
    Expr(:call,:ceil,e1,e2,e3)
end
function ceil(e1::Expr)
    Expr(:call,:ceil,e1)
end
function cell(e1::Expr)
    Expr(:call,:cell,e1)
end
function cfunction(e1::Expr,o2::Any,o3::Any)
    Expr(:call,:cfunction,e1,expr(o2),expr(o3))
end
function cfunction(e1::Expr,e2::Expr,o3::Any)
    Expr(:call,:cfunction,e1,e2,expr(o3))
end
function cfunction(e1::Expr,o2::Any,e3::Expr)
    Expr(:call,:cfunction,e1,expr(o2),e3)
end
function cfunction(e1::Expr,e2::Expr,e3::Expr)
    Expr(:call,:cfunction,e1,e2,e3)
end
function charwidth(e1::Expr)
    Expr(:call,:charwidth,e1)
end
function checkbounds(e1::Expr,o2::Any,o3::Any,o4::Any)
    Expr(:call,:checkbounds,e1,expr(o2),expr(o3),expr(o4))
end
function checkbounds(o1::Any,e2::Expr,o3::Any,o4::Any)
    Expr(:call,:checkbounds,expr(o1),e2,expr(o3),expr(o4))
end
function checkbounds(e1::Expr,e2::Expr,o3::Any,o4::Any)
    Expr(:call,:checkbounds,e1,e2,expr(o3),expr(o4))
end
function checkbounds(o1::Any,o2::Any,o3::Any,e4::Expr)
    Expr(:call,:checkbounds,expr(o1),expr(o2),expr(o3),e4)
end
function checkbounds(e1::Expr,o2::Any,o3::Any,e4::Expr)
    Expr(:call,:checkbounds,e1,expr(o2),expr(o3),e4)
end
function checkbounds(o1::Any,e2::Expr,o3::Any,e4::Expr)
    Expr(:call,:checkbounds,expr(o1),e2,expr(o3),e4)
end
function checkbounds(e1::Expr,e2::Expr,o3::Any,e4::Expr)
    Expr(:call,:checkbounds,e1,e2,expr(o3),e4)
end
function checkbounds(e1::Expr,e2::Expr,e3::Expr,e4::Expr)
    Expr(:call,:checkbounds,e1,e2,e3,e4)
end
function checkbounds(e1::Expr,o2::Any)
    Expr(:call,:checkbounds,e1,expr(o2))
end
function checkbounds(o1::Any,e2::Expr)
    Expr(:call,:checkbounds,expr(o1),e2)
end
function checkbounds(e1::Expr,e2::Expr)
    Expr(:call,:checkbounds,e1,e2)
end
function checkbounds(e1::Expr,o2::Any,o3::Any)
    Expr(:call,:checkbounds,e1,expr(o2),expr(o3))
end
function checkbounds(o1::Any,e2::Expr,o3::Any)
    Expr(:call,:checkbounds,expr(o1),e2,expr(o3))
end
function checkbounds(e1::Expr,e2::Expr,o3::Any)
    Expr(:call,:checkbounds,e1,e2,expr(o3))
end
function checkbounds(e1::Expr,e2::Expr,e3::Expr)
    Expr(:call,:checkbounds,e1,e2,e3)
end
function checkbounds(e1::Expr)
    Expr(:call,:checkbounds,e1)
end
function checkindex(e1::Expr,o2::Any,o3::Any)
    Expr(:call,:checkindex,e1,expr(o2),expr(o3))
end
function checkindex(o1::Any,e2::Expr,o3::Any)
    Expr(:call,:checkindex,expr(o1),e2,expr(o3))
end
function checkindex(e1::Expr,e2::Expr,o3::Any)
    Expr(:call,:checkindex,e1,e2,expr(o3))
end
function checkindex(e1::Expr,e2::Expr,e3::Expr)
    Expr(:call,:checkindex,e1,e2,e3)
end
function chmod(e1::Expr,o2::Any)
    Expr(:call,:chmod,e1,expr(o2))
end
function chmod(o1::Any,e2::Expr)
    Expr(:call,:chmod,expr(o1),e2)
end
function chmod(e1::Expr,e2::Expr)
    Expr(:call,:chmod,e1,e2)
end
function chol(e1::Expr,o2::Any)
    Expr(:call,:chol,e1,expr(o2))
end
function chol(o1::Any,e2::Expr)
    Expr(:call,:chol,expr(o1),e2)
end
function chol(e1::Expr,e2::Expr)
    Expr(:call,:chol,e1,e2)
end
function chol(e1::Expr)
    Expr(:call,:chol,e1)
end
function cholfact(e1::Expr,o2::Any)
    Expr(:call,:cholfact,e1,expr(o2))
end
function cholfact(o1::Any,e2::Expr)
    Expr(:call,:cholfact,expr(o1),e2)
end
function cholfact(e1::Expr,e2::Expr)
    Expr(:call,:cholfact,e1,e2)
end
function cholfact(e1::Expr,o2::Any,o3::Any)
    Expr(:call,:cholfact,e1,expr(o2),expr(o3))
end
function cholfact(o1::Any,e2::Expr,o3::Any)
    Expr(:call,:cholfact,expr(o1),e2,expr(o3))
end
function cholfact(e1::Expr,e2::Expr,o3::Any)
    Expr(:call,:cholfact,e1,e2,expr(o3))
end
function cholfact(o1::Any,o2::Any,e3::Expr)
    Expr(:call,:cholfact,expr(o1),expr(o2),e3)
end
function cholfact(e1::Expr,o2::Any,e3::Expr)
    Expr(:call,:cholfact,e1,expr(o2),e3)
end
function cholfact(o1::Any,e2::Expr,e3::Expr)
    Expr(:call,:cholfact,expr(o1),e2,e3)
end
function cholfact(e1::Expr,e2::Expr,e3::Expr)
    Expr(:call,:cholfact,e1,e2,e3)
end
function cholfact(e1::Expr)
    Expr(:call,:cholfact,e1)
end
function cholfact!(e1::Expr,o2::Any)
    Expr(:call,:cholfact!,e1,expr(o2))
end
function cholfact!(o1::Any,e2::Expr)
    Expr(:call,:cholfact!,expr(o1),e2)
end
function cholfact!(e1::Expr,e2::Expr)
    Expr(:call,:cholfact!,e1,e2)
end
function cholfact!(e1::Expr,o2::Any,o3::Any)
    Expr(:call,:cholfact!,e1,expr(o2),expr(o3))
end
function cholfact!(o1::Any,e2::Expr,o3::Any)
    Expr(:call,:cholfact!,expr(o1),e2,expr(o3))
end
function cholfact!(e1::Expr,e2::Expr,o3::Any)
    Expr(:call,:cholfact!,e1,e2,expr(o3))
end
function cholfact!(o1::Any,o2::Any,e3::Expr)
    Expr(:call,:cholfact!,expr(o1),expr(o2),e3)
end
function cholfact!(e1::Expr,o2::Any,e3::Expr)
    Expr(:call,:cholfact!,e1,expr(o2),e3)
end
function cholfact!(o1::Any,e2::Expr,e3::Expr)
    Expr(:call,:cholfact!,expr(o1),e2,e3)
end
function cholfact!(e1::Expr,e2::Expr,e3::Expr)
    Expr(:call,:cholfact!,e1,e2,e3)
end
function cholfact!(e1::Expr)
    Expr(:call,:cholfact!,e1)
end
function chomp(e1::Expr)
    Expr(:call,:chomp,e1)
end
function chop(e1::Expr)
    Expr(:call,:chop,e1)
end
function chown(e1::Expr,o2::Any)
    Expr(:call,:chown,e1,expr(o2))
end
function chown(o1::Any,e2::Expr)
    Expr(:call,:chown,expr(o1),e2)
end
function chown(e1::Expr,e2::Expr)
    Expr(:call,:chown,e1,e2)
end
function chown(e1::Expr,o2::Any,o3::Any)
    Expr(:call,:chown,e1,expr(o2),expr(o3))
end
function chown(o1::Any,e2::Expr,o3::Any)
    Expr(:call,:chown,expr(o1),e2,expr(o3))
end
function chown(e1::Expr,e2::Expr,o3::Any)
    Expr(:call,:chown,e1,e2,expr(o3))
end
function chown(o1::Any,o2::Any,e3::Expr)
    Expr(:call,:chown,expr(o1),expr(o2),e3)
end
function chown(e1::Expr,o2::Any,e3::Expr)
    Expr(:call,:chown,e1,expr(o2),e3)
end
function chown(o1::Any,e2::Expr,e3::Expr)
    Expr(:call,:chown,expr(o1),e2,e3)
end
function chown(e1::Expr,e2::Expr,e3::Expr)
    Expr(:call,:chown,e1,e2,e3)
end
function chr2ind(e1::Expr,o2::Any)
    Expr(:call,:chr2ind,e1,expr(o2))
end
function chr2ind(o1::Any,e2::Expr)
    Expr(:call,:chr2ind,expr(o1),e2)
end
function chr2ind(e1::Expr,e2::Expr)
    Expr(:call,:chr2ind,e1,e2)
end
function circshift(e1::Expr,o2::Any)
    Expr(:call,:circshift,e1,expr(o2))
end
function circshift(e1::Expr,e2::Expr)
    Expr(:call,:circshift,e1,e2)
end
function cis(e1::Expr)
    Expr(:call,:cis,e1)
end
function clamp(o1::Any,e2::Expr,o3::Any)
    Expr(:call,:clamp,expr(o1),e2,expr(o3))
end
function clamp(o1::Any,o2::Any,e3::Expr)
    Expr(:call,:clamp,expr(o1),expr(o2),e3)
end
function clamp(o1::Any,e2::Expr,e3::Expr)
    Expr(:call,:clamp,expr(o1),e2,e3)
end
function clamp(e1::Expr,o2::Any,o3::Any)
    Expr(:call,:clamp,e1,expr(o2),expr(o3))
end
function clamp(e1::Expr,e2::Expr,o3::Any)
    Expr(:call,:clamp,e1,e2,expr(o3))
end
function clamp(e1::Expr,o2::Any,e3::Expr)
    Expr(:call,:clamp,e1,expr(o2),e3)
end
function clamp!(e1::Expr,o2::Any,o3::Any)
    Expr(:call,:clamp!,e1,expr(o2),expr(o3))
end
function clamp!(e1::Expr,e2::Expr,o3::Any)
    Expr(:call,:clamp!,e1,e2,expr(o3))
end
function clamp!(e1::Expr,o2::Any,e3::Expr)
    Expr(:call,:clamp!,e1,expr(o2),e3)
end
function clamp!(e1::Expr,e2::Expr,e3::Expr)
    Expr(:call,:clamp!,e1,e2,e3)
end
function cld(e1::Expr,o2::Any)
    Expr(:call,:cld,e1,expr(o2))
end
function cld(o1::Any,e2::Expr)
    Expr(:call,:cld,expr(o1),e2)
end
function cld(e1::Expr,e2::Expr)
    Expr(:call,:cld,e1,e2)
end
function clear!(e1::Expr)
    Expr(:call,:clear!,e1)
end
function close(e1::Expr,o2::Any,o3::Any)
    Expr(:call,:close,e1,expr(o2),expr(o3))
end
function close(o1::Any,e2::Expr,o3::Any)
    Expr(:call,:close,expr(o1),e2,expr(o3))
end
function close(e1::Expr,e2::Expr,o3::Any)
    Expr(:call,:close,e1,e2,expr(o3))
end
function close(o1::Any,o2::Any,e3::Expr)
    Expr(:call,:close,expr(o1),expr(o2),e3)
end
function close(e1::Expr,o2::Any,e3::Expr)
    Expr(:call,:close,e1,expr(o2),e3)
end
function close(o1::Any,e2::Expr,e3::Expr)
    Expr(:call,:close,expr(o1),e2,e3)
end
function close(e1::Expr,e2::Expr,e3::Expr)
    Expr(:call,:close,e1,e2,e3)
end
function close(e1::Expr)
    Expr(:call,:close,e1)
end
function code_llvm(e1::Expr,o2::Any,o3::Any,o4::Any)
    Expr(:call,:code_llvm,e1,expr(o2),expr(o3),expr(o4))
end
function code_llvm(e1::Expr,o2::Any,o3::Any,e4::Expr)
    Expr(:call,:code_llvm,e1,expr(o2),expr(o3),e4)
end
function code_llvm(e1::Expr,e2::Expr,o3::Any,o4::Any)
    Expr(:call,:code_llvm,e1,e2,expr(o3),expr(o4))
end
function code_llvm(e1::Expr,e2::Expr,o3::Any,e4::Expr)
    Expr(:call,:code_llvm,e1,e2,expr(o3),e4)
end
function code_llvm(e1::Expr,o2::Any,e3::Expr,o4::Any)
    Expr(:call,:code_llvm,e1,expr(o2),e3,expr(o4))
end
function code_llvm(e1::Expr,o2::Any,e3::Expr,e4::Expr)
    Expr(:call,:code_llvm,e1,expr(o2),e3,e4)
end
function code_llvm(e1::Expr,e2::Expr,e3::Expr,o4::Any)
    Expr(:call,:code_llvm,e1,e2,e3,expr(o4))
end
function code_llvm(e1::Expr,e2::Expr,e3::Expr,e4::Expr)
    Expr(:call,:code_llvm,e1,e2,e3,e4)
end
function code_llvm(e1::Expr,o2::Any,o3::Any)
    Expr(:call,:code_llvm,e1,expr(o2),expr(o3))
end
function code_llvm(e1::Expr,e2::Expr,o3::Any)
    Expr(:call,:code_llvm,e1,e2,expr(o3))
end
function code_llvm(e1::Expr,o2::Any,e3::Expr)
    Expr(:call,:code_llvm,e1,expr(o2),e3)
end
function code_llvm(e1::Expr,e2::Expr,e3::Expr)
    Expr(:call,:code_llvm,e1,e2,e3)
end
function code_llvm(e1::Expr,o2::Any,o3::Any,o4::Any,o5::Any)
    Expr(:call,:code_llvm,e1,expr(o2),expr(o3),expr(o4),expr(o5))
end
function code_llvm(e1::Expr,o2::Any,o3::Any,e4::Expr,o5::Any)
    Expr(:call,:code_llvm,e1,expr(o2),expr(o3),e4,expr(o5))
end
function code_llvm(e1::Expr,e2::Expr,o3::Any,o4::Any,o5::Any)
    Expr(:call,:code_llvm,e1,e2,expr(o3),expr(o4),expr(o5))
end
function code_llvm(e1::Expr,e2::Expr,o3::Any,e4::Expr,o5::Any)
    Expr(:call,:code_llvm,e1,e2,expr(o3),e4,expr(o5))
end
function code_llvm(e1::Expr,o2::Any,e3::Expr,o4::Any,o5::Any)
    Expr(:call,:code_llvm,e1,expr(o2),e3,expr(o4),expr(o5))
end
function code_llvm(e1::Expr,o2::Any,e3::Expr,e4::Expr,o5::Any)
    Expr(:call,:code_llvm,e1,expr(o2),e3,e4,expr(o5))
end
function code_llvm(e1::Expr,e2::Expr,e3::Expr,o4::Any,o5::Any)
    Expr(:call,:code_llvm,e1,e2,e3,expr(o4),expr(o5))
end
function code_llvm(e1::Expr,e2::Expr,e3::Expr,e4::Expr,o5::Any)
    Expr(:call,:code_llvm,e1,e2,e3,e4,expr(o5))
end
function code_llvm(e1::Expr,o2::Any,o3::Any,o4::Any,e5::Expr)
    Expr(:call,:code_llvm,e1,expr(o2),expr(o3),expr(o4),e5)
end
function code_llvm(e1::Expr,o2::Any,o3::Any,e4::Expr,e5::Expr)
    Expr(:call,:code_llvm,e1,expr(o2),expr(o3),e4,e5)
end
function code_llvm(e1::Expr,e2::Expr,o3::Any,o4::Any,e5::Expr)
    Expr(:call,:code_llvm,e1,e2,expr(o3),expr(o4),e5)
end
function code_llvm(e1::Expr,e2::Expr,o3::Any,e4::Expr,e5::Expr)
    Expr(:call,:code_llvm,e1,e2,expr(o3),e4,e5)
end
function code_llvm(e1::Expr,o2::Any,e3::Expr,o4::Any,e5::Expr)
    Expr(:call,:code_llvm,e1,expr(o2),e3,expr(o4),e5)
end
function code_llvm(e1::Expr,o2::Any,e3::Expr,e4::Expr,e5::Expr)
    Expr(:call,:code_llvm,e1,expr(o2),e3,e4,e5)
end
function code_llvm(e1::Expr,e2::Expr,e3::Expr,o4::Any,e5::Expr)
    Expr(:call,:code_llvm,e1,e2,e3,expr(o4),e5)
end
function code_llvm(e1::Expr,e2::Expr,e3::Expr,e4::Expr,e5::Expr)
    Expr(:call,:code_llvm,e1,e2,e3,e4,e5)
end
function code_native(e1::Expr,o2::Any,o3::Any)
    Expr(:call,:code_native,e1,expr(o2),expr(o3))
end
function code_native(e1::Expr,e2::Expr,o3::Any)
    Expr(:call,:code_native,e1,e2,expr(o3))
end
function code_native(e1::Expr,o2::Any,e3::Expr)
    Expr(:call,:code_native,e1,expr(o2),e3)
end
function code_native(e1::Expr,e2::Expr,e3::Expr)
    Expr(:call,:code_native,e1,e2,e3)
end
function code_warntype(e1::Expr,o2::Any,o3::Any)
    Expr(:call,:code_warntype,e1,expr(o2),expr(o3))
end
function code_warntype(e1::Expr,e2::Expr,o3::Any)
    Expr(:call,:code_warntype,e1,e2,expr(o3))
end
function code_warntype(e1::Expr,o2::Any,e3::Expr)
    Expr(:call,:code_warntype,e1,expr(o2),e3)
end
function code_warntype(e1::Expr,e2::Expr,e3::Expr)
    Expr(:call,:code_warntype,e1,e2,e3)
end
function collect(e1::Expr,o2::Any)
    Expr(:call,:collect,e1,expr(o2))
end
function collect(e1::Expr,e2::Expr)
    Expr(:call,:collect,e1,e2)
end
function colon(o1::Any,e2::Expr,o3::Any)
    Expr(:call,:colon,expr(o1),e2,expr(o3))
end
function complex(e1::Expr,o2::Any)
    Expr(:call,:complex,e1,expr(o2))
end
function complex(o1::Any,e2::Expr)
    Expr(:call,:complex,expr(o1),e2)
end
function complex(e1::Expr,e2::Expr)
    Expr(:call,:complex,e1,e2)
end
function complex(e1::Expr)
    Expr(:call,:complex,e1)
end
function cond(e1::Expr,o2::Any)
    Expr(:call,:cond,e1,expr(o2))
end
function cond(e1::Expr,e2::Expr)
    Expr(:call,:cond,e1,e2)
end
function cond(e1::Expr)
    Expr(:call,:cond,e1)
end
function condskeel(e1::Expr,o2::Any)
    Expr(:call,:condskeel,e1,expr(o2))
end
function condskeel(o1::Any,e2::Expr)
    Expr(:call,:condskeel,expr(o1),e2)
end
function condskeel(e1::Expr,e2::Expr)
    Expr(:call,:condskeel,e1,e2)
end
function condskeel(e1::Expr,o2::Any,o3::Any)
    Expr(:call,:condskeel,e1,expr(o2),expr(o3))
end
function condskeel(o1::Any,e2::Expr,o3::Any)
    Expr(:call,:condskeel,expr(o1),e2,expr(o3))
end
function condskeel(e1::Expr,e2::Expr,o3::Any)
    Expr(:call,:condskeel,e1,e2,expr(o3))
end
function condskeel(o1::Any,o2::Any,e3::Expr)
    Expr(:call,:condskeel,expr(o1),expr(o2),e3)
end
function condskeel(e1::Expr,o2::Any,e3::Expr)
    Expr(:call,:condskeel,e1,expr(o2),e3)
end
function condskeel(o1::Any,e2::Expr,e3::Expr)
    Expr(:call,:condskeel,expr(o1),e2,e3)
end
function condskeel(e1::Expr,e2::Expr,e3::Expr)
    Expr(:call,:condskeel,e1,e2,e3)
end
function condskeel(e1::Expr)
    Expr(:call,:condskeel,e1)
end
function conj!(e1::Expr)
    Expr(:call,:conj!,e1)
end
function connect(e1::Expr,o2::Any)
    Expr(:call,:connect,e1,expr(o2))
end
function connect(o1::Any,e2::Expr)
    Expr(:call,:connect,expr(o1),e2)
end
function connect(e1::Expr,e2::Expr)
    Expr(:call,:connect,e1,e2)
end
function connect(e1::Expr,o2::Any,o3::Any)
    Expr(:call,:connect,e1,expr(o2),expr(o3))
end
function connect(o1::Any,e2::Expr,o3::Any)
    Expr(:call,:connect,expr(o1),e2,expr(o3))
end
function connect(e1::Expr,e2::Expr,o3::Any)
    Expr(:call,:connect,e1,e2,expr(o3))
end
function connect(o1::Any,o2::Any,e3::Expr)
    Expr(:call,:connect,expr(o1),expr(o2),e3)
end
function connect(e1::Expr,o2::Any,e3::Expr)
    Expr(:call,:connect,e1,expr(o2),e3)
end
function connect(o1::Any,e2::Expr,e3::Expr)
    Expr(:call,:connect,expr(o1),e2,e3)
end
function connect(e1::Expr,e2::Expr,e3::Expr)
    Expr(:call,:connect,e1,e2,e3)
end
function connect(e1::Expr)
    Expr(:call,:connect,e1)
end
function consume(e1::Expr,o2::Any)
    Expr(:call,:consume,e1,expr(o2))
end
function consume(o1::Any,e2::Expr)
    Expr(:call,:consume,expr(o1),e2)
end
function consume(e1::Expr,e2::Expr)
    Expr(:call,:consume,e1,e2)
end
function contains(e1::Expr,o2::Any)
    Expr(:call,:contains,e1,expr(o2))
end
function contains(o1::Any,e2::Expr)
    Expr(:call,:contains,expr(o1),e2)
end
function contains(e1::Expr,e2::Expr)
    Expr(:call,:contains,e1,e2)
end
function contains(e1::Expr,o2::Any,o3::Any)
    Expr(:call,:contains,e1,expr(o2),expr(o3))
end
function contains(e1::Expr,e2::Expr,o3::Any)
    Expr(:call,:contains,e1,e2,expr(o3))
end
function contains(e1::Expr,o2::Any,e3::Expr)
    Expr(:call,:contains,e1,expr(o2),e3)
end
function contains(e1::Expr,e2::Expr,e3::Expr)
    Expr(:call,:contains,e1,e2,e3)
end
function conv(e1::Expr,o2::Any)
    Expr(:call,:conv,e1,expr(o2))
end
function conv(o1::Any,e2::Expr)
    Expr(:call,:conv,expr(o1),e2)
end
function conv(e1::Expr,e2::Expr)
    Expr(:call,:conv,e1,e2)
end
function conv2(e1::Expr,o2::Any)
    Expr(:call,:conv2,e1,expr(o2))
end
function conv2(o1::Any,e2::Expr)
    Expr(:call,:conv2,expr(o1),e2)
end
function conv2(e1::Expr,e2::Expr)
    Expr(:call,:conv2,e1,e2)
end
function conv2(e1::Expr,o2::Any,o3::Any)
    Expr(:call,:conv2,e1,expr(o2),expr(o3))
end
function conv2(o1::Any,e2::Expr,o3::Any)
    Expr(:call,:conv2,expr(o1),e2,expr(o3))
end
function conv2(e1::Expr,e2::Expr,o3::Any)
    Expr(:call,:conv2,e1,e2,expr(o3))
end
function conv2(o1::Any,o2::Any,e3::Expr)
    Expr(:call,:conv2,expr(o1),expr(o2),e3)
end
function conv2(e1::Expr,o2::Any,e3::Expr)
    Expr(:call,:conv2,e1,expr(o2),e3)
end
function conv2(o1::Any,e2::Expr,e3::Expr)
    Expr(:call,:conv2,expr(o1),e2,e3)
end
function conv2(e1::Expr,e2::Expr,e3::Expr)
    Expr(:call,:conv2,e1,e2,e3)
end
function convert(e1::Expr,o2::Any)
    Expr(:call,:convert,e1,expr(o2))
end
function convert(e1::Expr,e2::Expr)
    Expr(:call,:convert,e1,e2)
end
function convert(e1::Expr,o2::Any,o3::Any)
    Expr(:call,:convert,e1,expr(o2),expr(o3))
end
function convert(o1::Any,e2::Expr,o3::Any)
    Expr(:call,:convert,expr(o1),e2,expr(o3))
end
function convert(e1::Expr,e2::Expr,o3::Any)
    Expr(:call,:convert,e1,e2,expr(o3))
end
function convert(o1::Any,o2::Any,e3::Expr)
    Expr(:call,:convert,expr(o1),expr(o2),e3)
end
function convert(e1::Expr,o2::Any,e3::Expr)
    Expr(:call,:convert,e1,expr(o2),e3)
end
function convert(o1::Any,e2::Expr,e3::Expr)
    Expr(:call,:convert,expr(o1),e2,e3)
end
function convert(e1::Expr,e2::Expr,e3::Expr)
    Expr(:call,:convert,e1,e2,e3)
end
function copy(e1::Expr,o2::Any,o3::Any)
    Expr(:call,:copy,e1,expr(o2),expr(o3))
end
function copy(o1::Any,e2::Expr,o3::Any)
    Expr(:call,:copy,expr(o1),e2,expr(o3))
end
function copy(e1::Expr,e2::Expr,o3::Any)
    Expr(:call,:copy,e1,e2,expr(o3))
end
function copy(o1::Any,o2::Any,e3::Expr)
    Expr(:call,:copy,expr(o1),expr(o2),e3)
end
function copy(e1::Expr,o2::Any,e3::Expr)
    Expr(:call,:copy,e1,expr(o2),e3)
end
function copy(o1::Any,e2::Expr,e3::Expr)
    Expr(:call,:copy,expr(o1),e2,e3)
end
function copy(e1::Expr,e2::Expr,e3::Expr)
    Expr(:call,:copy,e1,e2,e3)
end
function copy!(e1::Expr,o2::Any,o3::Any,o4::Any,o5::Any,o6::Any,o7::Any)
    Expr(:call,:copy!,e1,expr(o2),expr(o3),expr(o4),expr(o5),expr(o6),expr(o7))
end
function copy!(o1::Any,e2::Expr,o3::Any,o4::Any,o5::Any,o6::Any,o7::Any)
    Expr(:call,:copy!,expr(o1),e2,expr(o3),expr(o4),expr(o5),expr(o6),expr(o7))
end
function copy!(e1::Expr,e2::Expr,o3::Any,o4::Any,o5::Any,o6::Any,o7::Any)
    Expr(:call,:copy!,e1,e2,expr(o3),expr(o4),expr(o5),expr(o6),expr(o7))
end
function copy!(o1::Any,o2::Any,e3::Expr,o4::Any,o5::Any,o6::Any,o7::Any)
    Expr(:call,:copy!,expr(o1),expr(o2),e3,expr(o4),expr(o5),expr(o6),expr(o7))
end
function copy!(e1::Expr,o2::Any,e3::Expr,o4::Any,o5::Any,o6::Any,o7::Any)
    Expr(:call,:copy!,e1,expr(o2),e3,expr(o4),expr(o5),expr(o6),expr(o7))
end
function copy!(o1::Any,e2::Expr,e3::Expr,o4::Any,o5::Any,o6::Any,o7::Any)
    Expr(:call,:copy!,expr(o1),e2,e3,expr(o4),expr(o5),expr(o6),expr(o7))
end
function copy!(e1::Expr,e2::Expr,e3::Expr,o4::Any,o5::Any,o6::Any,o7::Any)
    Expr(:call,:copy!,e1,e2,e3,expr(o4),expr(o5),expr(o6),expr(o7))
end
function copy!(o1::Any,o2::Any,o3::Any,e4::Expr,o5::Any,o6::Any,o7::Any)
    Expr(:call,:copy!,expr(o1),expr(o2),expr(o3),e4,expr(o5),expr(o6),expr(o7))
end
function copy!(e1::Expr,o2::Any,o3::Any,e4::Expr,o5::Any,o6::Any,o7::Any)
    Expr(:call,:copy!,e1,expr(o2),expr(o3),e4,expr(o5),expr(o6),expr(o7))
end
function copy!(o1::Any,e2::Expr,o3::Any,e4::Expr,o5::Any,o6::Any,o7::Any)
    Expr(:call,:copy!,expr(o1),e2,expr(o3),e4,expr(o5),expr(o6),expr(o7))
end
function copy!(e1::Expr,e2::Expr,o3::Any,e4::Expr,o5::Any,o6::Any,o7::Any)
    Expr(:call,:copy!,e1,e2,expr(o3),e4,expr(o5),expr(o6),expr(o7))
end
function copy!(o1::Any,o2::Any,e3::Expr,e4::Expr,o5::Any,o6::Any,o7::Any)
    Expr(:call,:copy!,expr(o1),expr(o2),e3,e4,expr(o5),expr(o6),expr(o7))
end
function copy!(e1::Expr,o2::Any,e3::Expr,e4::Expr,o5::Any,o6::Any,o7::Any)
    Expr(:call,:copy!,e1,expr(o2),e3,e4,expr(o5),expr(o6),expr(o7))
end
function copy!(o1::Any,e2::Expr,e3::Expr,e4::Expr,o5::Any,o6::Any,o7::Any)
    Expr(:call,:copy!,expr(o1),e2,e3,e4,expr(o5),expr(o6),expr(o7))
end
function copy!(e1::Expr,e2::Expr,e3::Expr,e4::Expr,o5::Any,o6::Any,o7::Any)
    Expr(:call,:copy!,e1,e2,e3,e4,expr(o5),expr(o6),expr(o7))
end
function copy!(o1::Any,o2::Any,o3::Any,o4::Any,e5::Expr,o6::Any,o7::Any)
    Expr(:call,:copy!,expr(o1),expr(o2),expr(o3),expr(o4),e5,expr(o6),expr(o7))
end
function copy!(e1::Expr,o2::Any,o3::Any,o4::Any,e5::Expr,o6::Any,o7::Any)
    Expr(:call,:copy!,e1,expr(o2),expr(o3),expr(o4),e5,expr(o6),expr(o7))
end
function copy!(o1::Any,e2::Expr,o3::Any,o4::Any,e5::Expr,o6::Any,o7::Any)
    Expr(:call,:copy!,expr(o1),e2,expr(o3),expr(o4),e5,expr(o6),expr(o7))
end
function copy!(e1::Expr,e2::Expr,o3::Any,o4::Any,e5::Expr,o6::Any,o7::Any)
    Expr(:call,:copy!,e1,e2,expr(o3),expr(o4),e5,expr(o6),expr(o7))
end
function copy!(o1::Any,o2::Any,e3::Expr,o4::Any,e5::Expr,o6::Any,o7::Any)
    Expr(:call,:copy!,expr(o1),expr(o2),e3,expr(o4),e5,expr(o6),expr(o7))
end
function copy!(e1::Expr,o2::Any,e3::Expr,o4::Any,e5::Expr,o6::Any,o7::Any)
    Expr(:call,:copy!,e1,expr(o2),e3,expr(o4),e5,expr(o6),expr(o7))
end
function copy!(o1::Any,e2::Expr,e3::Expr,o4::Any,e5::Expr,o6::Any,o7::Any)
    Expr(:call,:copy!,expr(o1),e2,e3,expr(o4),e5,expr(o6),expr(o7))
end
function copy!(e1::Expr,e2::Expr,e3::Expr,o4::Any,e5::Expr,o6::Any,o7::Any)
    Expr(:call,:copy!,e1,e2,e3,expr(o4),e5,expr(o6),expr(o7))
end
function copy!(o1::Any,o2::Any,o3::Any,e4::Expr,e5::Expr,o6::Any,o7::Any)
    Expr(:call,:copy!,expr(o1),expr(o2),expr(o3),e4,e5,expr(o6),expr(o7))
end
function copy!(e1::Expr,o2::Any,o3::Any,e4::Expr,e5::Expr,o6::Any,o7::Any)
    Expr(:call,:copy!,e1,expr(o2),expr(o3),e4,e5,expr(o6),expr(o7))
end
function copy!(o1::Any,e2::Expr,o3::Any,e4::Expr,e5::Expr,o6::Any,o7::Any)
    Expr(:call,:copy!,expr(o1),e2,expr(o3),e4,e5,expr(o6),expr(o7))
end
function copy!(e1::Expr,e2::Expr,o3::Any,e4::Expr,e5::Expr,o6::Any,o7::Any)
    Expr(:call,:copy!,e1,e2,expr(o3),e4,e5,expr(o6),expr(o7))
end
function copy!(o1::Any,o2::Any,e3::Expr,e4::Expr,e5::Expr,o6::Any,o7::Any)
    Expr(:call,:copy!,expr(o1),expr(o2),e3,e4,e5,expr(o6),expr(o7))
end
function copy!(e1::Expr,o2::Any,e3::Expr,e4::Expr,e5::Expr,o6::Any,o7::Any)
    Expr(:call,:copy!,e1,expr(o2),e3,e4,e5,expr(o6),expr(o7))
end
function copy!(o1::Any,e2::Expr,e3::Expr,e4::Expr,e5::Expr,o6::Any,o7::Any)
    Expr(:call,:copy!,expr(o1),e2,e3,e4,e5,expr(o6),expr(o7))
end
function copy!(e1::Expr,e2::Expr,e3::Expr,e4::Expr,e5::Expr,o6::Any,o7::Any)
    Expr(:call,:copy!,e1,e2,e3,e4,e5,expr(o6),expr(o7))
end
function copy!(o1::Any,o2::Any,o3::Any,o4::Any,o5::Any,e6::Expr,o7::Any)
    Expr(:call,:copy!,expr(o1),expr(o2),expr(o3),expr(o4),expr(o5),e6,expr(o7))
end
function copy!(e1::Expr,o2::Any,o3::Any,o4::Any,o5::Any,e6::Expr,o7::Any)
    Expr(:call,:copy!,e1,expr(o2),expr(o3),expr(o4),expr(o5),e6,expr(o7))
end
function copy!(o1::Any,e2::Expr,o3::Any,o4::Any,o5::Any,e6::Expr,o7::Any)
    Expr(:call,:copy!,expr(o1),e2,expr(o3),expr(o4),expr(o5),e6,expr(o7))
end
function copy!(e1::Expr,e2::Expr,o3::Any,o4::Any,o5::Any,e6::Expr,o7::Any)
    Expr(:call,:copy!,e1,e2,expr(o3),expr(o4),expr(o5),e6,expr(o7))
end
function copy!(o1::Any,o2::Any,e3::Expr,o4::Any,o5::Any,e6::Expr,o7::Any)
    Expr(:call,:copy!,expr(o1),expr(o2),e3,expr(o4),expr(o5),e6,expr(o7))
end
function copy!(e1::Expr,o2::Any,e3::Expr,o4::Any,o5::Any,e6::Expr,o7::Any)
    Expr(:call,:copy!,e1,expr(o2),e3,expr(o4),expr(o5),e6,expr(o7))
end
function copy!(o1::Any,e2::Expr,e3::Expr,o4::Any,o5::Any,e6::Expr,o7::Any)
    Expr(:call,:copy!,expr(o1),e2,e3,expr(o4),expr(o5),e6,expr(o7))
end
function copy!(e1::Expr,e2::Expr,e3::Expr,o4::Any,o5::Any,e6::Expr,o7::Any)
    Expr(:call,:copy!,e1,e2,e3,expr(o4),expr(o5),e6,expr(o7))
end
function copy!(o1::Any,o2::Any,o3::Any,e4::Expr,o5::Any,e6::Expr,o7::Any)
    Expr(:call,:copy!,expr(o1),expr(o2),expr(o3),e4,expr(o5),e6,expr(o7))
end
function copy!(e1::Expr,o2::Any,o3::Any,e4::Expr,o5::Any,e6::Expr,o7::Any)
    Expr(:call,:copy!,e1,expr(o2),expr(o3),e4,expr(o5),e6,expr(o7))
end
function copy!(o1::Any,e2::Expr,o3::Any,e4::Expr,o5::Any,e6::Expr,o7::Any)
    Expr(:call,:copy!,expr(o1),e2,expr(o3),e4,expr(o5),e6,expr(o7))
end
function copy!(e1::Expr,e2::Expr,o3::Any,e4::Expr,o5::Any,e6::Expr,o7::Any)
    Expr(:call,:copy!,e1,e2,expr(o3),e4,expr(o5),e6,expr(o7))
end
function copy!(o1::Any,o2::Any,e3::Expr,e4::Expr,o5::Any,e6::Expr,o7::Any)
    Expr(:call,:copy!,expr(o1),expr(o2),e3,e4,expr(o5),e6,expr(o7))
end
function copy!(e1::Expr,o2::Any,e3::Expr,e4::Expr,o5::Any,e6::Expr,o7::Any)
    Expr(:call,:copy!,e1,expr(o2),e3,e4,expr(o5),e6,expr(o7))
end
function copy!(o1::Any,e2::Expr,e3::Expr,e4::Expr,o5::Any,e6::Expr,o7::Any)
    Expr(:call,:copy!,expr(o1),e2,e3,e4,expr(o5),e6,expr(o7))
end
function copy!(e1::Expr,e2::Expr,e3::Expr,e4::Expr,o5::Any,e6::Expr,o7::Any)
    Expr(:call,:copy!,e1,e2,e3,e4,expr(o5),e6,expr(o7))
end
function copy!(o1::Any,o2::Any,o3::Any,o4::Any,e5::Expr,e6::Expr,o7::Any)
    Expr(:call,:copy!,expr(o1),expr(o2),expr(o3),expr(o4),e5,e6,expr(o7))
end
function copy!(e1::Expr,o2::Any,o3::Any,o4::Any,e5::Expr,e6::Expr,o7::Any)
    Expr(:call,:copy!,e1,expr(o2),expr(o3),expr(o4),e5,e6,expr(o7))
end
function copy!(o1::Any,e2::Expr,o3::Any,o4::Any,e5::Expr,e6::Expr,o7::Any)
    Expr(:call,:copy!,expr(o1),e2,expr(o3),expr(o4),e5,e6,expr(o7))
end
function copy!(e1::Expr,e2::Expr,o3::Any,o4::Any,e5::Expr,e6::Expr,o7::Any)
    Expr(:call,:copy!,e1,e2,expr(o3),expr(o4),e5,e6,expr(o7))
end
function copy!(o1::Any,o2::Any,e3::Expr,o4::Any,e5::Expr,e6::Expr,o7::Any)
    Expr(:call,:copy!,expr(o1),expr(o2),e3,expr(o4),e5,e6,expr(o7))
end
function copy!(e1::Expr,o2::Any,e3::Expr,o4::Any,e5::Expr,e6::Expr,o7::Any)
    Expr(:call,:copy!,e1,expr(o2),e3,expr(o4),e5,e6,expr(o7))
end
function copy!(o1::Any,e2::Expr,e3::Expr,o4::Any,e5::Expr,e6::Expr,o7::Any)
    Expr(:call,:copy!,expr(o1),e2,e3,expr(o4),e5,e6,expr(o7))
end
function copy!(e1::Expr,e2::Expr,e3::Expr,o4::Any,e5::Expr,e6::Expr,o7::Any)
    Expr(:call,:copy!,e1,e2,e3,expr(o4),e5,e6,expr(o7))
end
function copy!(o1::Any,o2::Any,o3::Any,e4::Expr,e5::Expr,e6::Expr,o7::Any)
    Expr(:call,:copy!,expr(o1),expr(o2),expr(o3),e4,e5,e6,expr(o7))
end
function copy!(e1::Expr,o2::Any,o3::Any,e4::Expr,e5::Expr,e6::Expr,o7::Any)
    Expr(:call,:copy!,e1,expr(o2),expr(o3),e4,e5,e6,expr(o7))
end
function copy!(o1::Any,e2::Expr,o3::Any,e4::Expr,e5::Expr,e6::Expr,o7::Any)
    Expr(:call,:copy!,expr(o1),e2,expr(o3),e4,e5,e6,expr(o7))
end
function copy!(e1::Expr,e2::Expr,o3::Any,e4::Expr,e5::Expr,e6::Expr,o7::Any)
    Expr(:call,:copy!,e1,e2,expr(o3),e4,e5,e6,expr(o7))
end
function copy!(o1::Any,o2::Any,e3::Expr,e4::Expr,e5::Expr,e6::Expr,o7::Any)
    Expr(:call,:copy!,expr(o1),expr(o2),e3,e4,e5,e6,expr(o7))
end
function copy!(e1::Expr,o2::Any,e3::Expr,e4::Expr,e5::Expr,e6::Expr,o7::Any)
    Expr(:call,:copy!,e1,expr(o2),e3,e4,e5,e6,expr(o7))
end
function copy!(o1::Any,e2::Expr,e3::Expr,e4::Expr,e5::Expr,e6::Expr,o7::Any)
    Expr(:call,:copy!,expr(o1),e2,e3,e4,e5,e6,expr(o7))
end
function copy!(e1::Expr,e2::Expr,e3::Expr,e4::Expr,e5::Expr,e6::Expr,o7::Any)
    Expr(:call,:copy!,e1,e2,e3,e4,e5,e6,expr(o7))
end
function copy!(o1::Any,o2::Any,o3::Any,o4::Any,o5::Any,o6::Any,e7::Expr)
    Expr(:call,:copy!,expr(o1),expr(o2),expr(o3),expr(o4),expr(o5),expr(o6),e7)
end
function copy!(e1::Expr,o2::Any,o3::Any,o4::Any,o5::Any,o6::Any,e7::Expr)
    Expr(:call,:copy!,e1,expr(o2),expr(o3),expr(o4),expr(o5),expr(o6),e7)
end
function copy!(o1::Any,e2::Expr,o3::Any,o4::Any,o5::Any,o6::Any,e7::Expr)
    Expr(:call,:copy!,expr(o1),e2,expr(o3),expr(o4),expr(o5),expr(o6),e7)
end
function copy!(e1::Expr,e2::Expr,o3::Any,o4::Any,o5::Any,o6::Any,e7::Expr)
    Expr(:call,:copy!,e1,e2,expr(o3),expr(o4),expr(o5),expr(o6),e7)
end
function copy!(o1::Any,o2::Any,e3::Expr,o4::Any,o5::Any,o6::Any,e7::Expr)
    Expr(:call,:copy!,expr(o1),expr(o2),e3,expr(o4),expr(o5),expr(o6),e7)
end
function copy!(e1::Expr,o2::Any,e3::Expr,o4::Any,o5::Any,o6::Any,e7::Expr)
    Expr(:call,:copy!,e1,expr(o2),e3,expr(o4),expr(o5),expr(o6),e7)
end
function copy!(o1::Any,e2::Expr,e3::Expr,o4::Any,o5::Any,o6::Any,e7::Expr)
    Expr(:call,:copy!,expr(o1),e2,e3,expr(o4),expr(o5),expr(o6),e7)
end
function copy!(e1::Expr,e2::Expr,e3::Expr,o4::Any,o5::Any,o6::Any,e7::Expr)
    Expr(:call,:copy!,e1,e2,e3,expr(o4),expr(o5),expr(o6),e7)
end
function copy!(o1::Any,o2::Any,o3::Any,e4::Expr,o5::Any,o6::Any,e7::Expr)
    Expr(:call,:copy!,expr(o1),expr(o2),expr(o3),e4,expr(o5),expr(o6),e7)
end
function copy!(e1::Expr,o2::Any,o3::Any,e4::Expr,o5::Any,o6::Any,e7::Expr)
    Expr(:call,:copy!,e1,expr(o2),expr(o3),e4,expr(o5),expr(o6),e7)
end
function copy!(o1::Any,e2::Expr,o3::Any,e4::Expr,o5::Any,o6::Any,e7::Expr)
    Expr(:call,:copy!,expr(o1),e2,expr(o3),e4,expr(o5),expr(o6),e7)
end
function copy!(e1::Expr,e2::Expr,o3::Any,e4::Expr,o5::Any,o6::Any,e7::Expr)
    Expr(:call,:copy!,e1,e2,expr(o3),e4,expr(o5),expr(o6),e7)
end
function copy!(o1::Any,o2::Any,e3::Expr,e4::Expr,o5::Any,o6::Any,e7::Expr)
    Expr(:call,:copy!,expr(o1),expr(o2),e3,e4,expr(o5),expr(o6),e7)
end
function copy!(e1::Expr,o2::Any,e3::Expr,e4::Expr,o5::Any,o6::Any,e7::Expr)
    Expr(:call,:copy!,e1,expr(o2),e3,e4,expr(o5),expr(o6),e7)
end
function copy!(o1::Any,e2::Expr,e3::Expr,e4::Expr,o5::Any,o6::Any,e7::Expr)
    Expr(:call,:copy!,expr(o1),e2,e3,e4,expr(o5),expr(o6),e7)
end
function copy!(e1::Expr,e2::Expr,e3::Expr,e4::Expr,o5::Any,o6::Any,e7::Expr)
    Expr(:call,:copy!,e1,e2,e3,e4,expr(o5),expr(o6),e7)
end
function copy!(o1::Any,o2::Any,o3::Any,o4::Any,e5::Expr,o6::Any,e7::Expr)
    Expr(:call,:copy!,expr(o1),expr(o2),expr(o3),expr(o4),e5,expr(o6),e7)
end
function copy!(e1::Expr,o2::Any,o3::Any,o4::Any,e5::Expr,o6::Any,e7::Expr)
    Expr(:call,:copy!,e1,expr(o2),expr(o3),expr(o4),e5,expr(o6),e7)
end
function copy!(o1::Any,e2::Expr,o3::Any,o4::Any,e5::Expr,o6::Any,e7::Expr)
    Expr(:call,:copy!,expr(o1),e2,expr(o3),expr(o4),e5,expr(o6),e7)
end
function copy!(e1::Expr,e2::Expr,o3::Any,o4::Any,e5::Expr,o6::Any,e7::Expr)
    Expr(:call,:copy!,e1,e2,expr(o3),expr(o4),e5,expr(o6),e7)
end
function copy!(o1::Any,o2::Any,e3::Expr,o4::Any,e5::Expr,o6::Any,e7::Expr)
    Expr(:call,:copy!,expr(o1),expr(o2),e3,expr(o4),e5,expr(o6),e7)
end
function copy!(e1::Expr,o2::Any,e3::Expr,o4::Any,e5::Expr,o6::Any,e7::Expr)
    Expr(:call,:copy!,e1,expr(o2),e3,expr(o4),e5,expr(o6),e7)
end
function copy!(o1::Any,e2::Expr,e3::Expr,o4::Any,e5::Expr,o6::Any,e7::Expr)
    Expr(:call,:copy!,expr(o1),e2,e3,expr(o4),e5,expr(o6),e7)
end
function copy!(e1::Expr,e2::Expr,e3::Expr,o4::Any,e5::Expr,o6::Any,e7::Expr)
    Expr(:call,:copy!,e1,e2,e3,expr(o4),e5,expr(o6),e7)
end
function copy!(o1::Any,o2::Any,o3::Any,e4::Expr,e5::Expr,o6::Any,e7::Expr)
    Expr(:call,:copy!,expr(o1),expr(o2),expr(o3),e4,e5,expr(o6),e7)
end
function copy!(e1::Expr,o2::Any,o3::Any,e4::Expr,e5::Expr,o6::Any,e7::Expr)
    Expr(:call,:copy!,e1,expr(o2),expr(o3),e4,e5,expr(o6),e7)
end
function copy!(o1::Any,e2::Expr,o3::Any,e4::Expr,e5::Expr,o6::Any,e7::Expr)
    Expr(:call,:copy!,expr(o1),e2,expr(o3),e4,e5,expr(o6),e7)
end
function copy!(e1::Expr,e2::Expr,o3::Any,e4::Expr,e5::Expr,o6::Any,e7::Expr)
    Expr(:call,:copy!,e1,e2,expr(o3),e4,e5,expr(o6),e7)
end
function copy!(o1::Any,o2::Any,e3::Expr,e4::Expr,e5::Expr,o6::Any,e7::Expr)
    Expr(:call,:copy!,expr(o1),expr(o2),e3,e4,e5,expr(o6),e7)
end
function copy!(e1::Expr,o2::Any,e3::Expr,e4::Expr,e5::Expr,o6::Any,e7::Expr)
    Expr(:call,:copy!,e1,expr(o2),e3,e4,e5,expr(o6),e7)
end
function copy!(o1::Any,e2::Expr,e3::Expr,e4::Expr,e5::Expr,o6::Any,e7::Expr)
    Expr(:call,:copy!,expr(o1),e2,e3,e4,e5,expr(o6),e7)
end
function copy!(e1::Expr,e2::Expr,e3::Expr,e4::Expr,e5::Expr,o6::Any,e7::Expr)
    Expr(:call,:copy!,e1,e2,e3,e4,e5,expr(o6),e7)
end
function copy!(o1::Any,o2::Any,o3::Any,o4::Any,o5::Any,e6::Expr,e7::Expr)
    Expr(:call,:copy!,expr(o1),expr(o2),expr(o3),expr(o4),expr(o5),e6,e7)
end
function copy!(e1::Expr,o2::Any,o3::Any,o4::Any,o5::Any,e6::Expr,e7::Expr)
    Expr(:call,:copy!,e1,expr(o2),expr(o3),expr(o4),expr(o5),e6,e7)
end
function copy!(o1::Any,e2::Expr,o3::Any,o4::Any,o5::Any,e6::Expr,e7::Expr)
    Expr(:call,:copy!,expr(o1),e2,expr(o3),expr(o4),expr(o5),e6,e7)
end
function copy!(e1::Expr,e2::Expr,o3::Any,o4::Any,o5::Any,e6::Expr,e7::Expr)
    Expr(:call,:copy!,e1,e2,expr(o3),expr(o4),expr(o5),e6,e7)
end
function copy!(o1::Any,o2::Any,e3::Expr,o4::Any,o5::Any,e6::Expr,e7::Expr)
    Expr(:call,:copy!,expr(o1),expr(o2),e3,expr(o4),expr(o5),e6,e7)
end
function copy!(e1::Expr,o2::Any,e3::Expr,o4::Any,o5::Any,e6::Expr,e7::Expr)
    Expr(:call,:copy!,e1,expr(o2),e3,expr(o4),expr(o5),e6,e7)
end
function copy!(o1::Any,e2::Expr,e3::Expr,o4::Any,o5::Any,e6::Expr,e7::Expr)
    Expr(:call,:copy!,expr(o1),e2,e3,expr(o4),expr(o5),e6,e7)
end
function copy!(e1::Expr,e2::Expr,e3::Expr,o4::Any,o5::Any,e6::Expr,e7::Expr)
    Expr(:call,:copy!,e1,e2,e3,expr(o4),expr(o5),e6,e7)
end
function copy!(o1::Any,o2::Any,o3::Any,e4::Expr,o5::Any,e6::Expr,e7::Expr)
    Expr(:call,:copy!,expr(o1),expr(o2),expr(o3),e4,expr(o5),e6,e7)
end
function copy!(e1::Expr,o2::Any,o3::Any,e4::Expr,o5::Any,e6::Expr,e7::Expr)
    Expr(:call,:copy!,e1,expr(o2),expr(o3),e4,expr(o5),e6,e7)
end
function copy!(o1::Any,e2::Expr,o3::Any,e4::Expr,o5::Any,e6::Expr,e7::Expr)
    Expr(:call,:copy!,expr(o1),e2,expr(o3),e4,expr(o5),e6,e7)
end
function copy!(e1::Expr,e2::Expr,o3::Any,e4::Expr,o5::Any,e6::Expr,e7::Expr)
    Expr(:call,:copy!,e1,e2,expr(o3),e4,expr(o5),e6,e7)
end
function copy!(o1::Any,o2::Any,e3::Expr,e4::Expr,o5::Any,e6::Expr,e7::Expr)
    Expr(:call,:copy!,expr(o1),expr(o2),e3,e4,expr(o5),e6,e7)
end
function copy!(e1::Expr,o2::Any,e3::Expr,e4::Expr,o5::Any,e6::Expr,e7::Expr)
    Expr(:call,:copy!,e1,expr(o2),e3,e4,expr(o5),e6,e7)
end
function copy!(o1::Any,e2::Expr,e3::Expr,e4::Expr,o5::Any,e6::Expr,e7::Expr)
    Expr(:call,:copy!,expr(o1),e2,e3,e4,expr(o5),e6,e7)
end
function copy!(e1::Expr,e2::Expr,e3::Expr,e4::Expr,o5::Any,e6::Expr,e7::Expr)
    Expr(:call,:copy!,e1,e2,e3,e4,expr(o5),e6,e7)
end
function copy!(o1::Any,o2::Any,o3::Any,o4::Any,e5::Expr,e6::Expr,e7::Expr)
    Expr(:call,:copy!,expr(o1),expr(o2),expr(o3),expr(o4),e5,e6,e7)
end
function copy!(e1::Expr,o2::Any,o3::Any,o4::Any,e5::Expr,e6::Expr,e7::Expr)
    Expr(:call,:copy!,e1,expr(o2),expr(o3),expr(o4),e5,e6,e7)
end
function copy!(o1::Any,e2::Expr,o3::Any,o4::Any,e5::Expr,e6::Expr,e7::Expr)
    Expr(:call,:copy!,expr(o1),e2,expr(o3),expr(o4),e5,e6,e7)
end
function copy!(e1::Expr,e2::Expr,o3::Any,o4::Any,e5::Expr,e6::Expr,e7::Expr)
    Expr(:call,:copy!,e1,e2,expr(o3),expr(o4),e5,e6,e7)
end
function copy!(o1::Any,o2::Any,e3::Expr,o4::Any,e5::Expr,e6::Expr,e7::Expr)
    Expr(:call,:copy!,expr(o1),expr(o2),e3,expr(o4),e5,e6,e7)
end
function copy!(e1::Expr,o2::Any,e3::Expr,o4::Any,e5::Expr,e6::Expr,e7::Expr)
    Expr(:call,:copy!,e1,expr(o2),e3,expr(o4),e5,e6,e7)
end
function copy!(o1::Any,e2::Expr,e3::Expr,o4::Any,e5::Expr,e6::Expr,e7::Expr)
    Expr(:call,:copy!,expr(o1),e2,e3,expr(o4),e5,e6,e7)
end
function copy!(e1::Expr,e2::Expr,e3::Expr,o4::Any,e5::Expr,e6::Expr,e7::Expr)
    Expr(:call,:copy!,e1,e2,e3,expr(o4),e5,e6,e7)
end
function copy!(o1::Any,o2::Any,o3::Any,e4::Expr,e5::Expr,e6::Expr,e7::Expr)
    Expr(:call,:copy!,expr(o1),expr(o2),expr(o3),e4,e5,e6,e7)
end
function copy!(e1::Expr,o2::Any,o3::Any,e4::Expr,e5::Expr,e6::Expr,e7::Expr)
    Expr(:call,:copy!,e1,expr(o2),expr(o3),e4,e5,e6,e7)
end
function copy!(o1::Any,e2::Expr,o3::Any,e4::Expr,e5::Expr,e6::Expr,e7::Expr)
    Expr(:call,:copy!,expr(o1),e2,expr(o3),e4,e5,e6,e7)
end
function copy!(e1::Expr,e2::Expr,o3::Any,e4::Expr,e5::Expr,e6::Expr,e7::Expr)
    Expr(:call,:copy!,e1,e2,expr(o3),e4,e5,e6,e7)
end
function copy!(o1::Any,o2::Any,e3::Expr,e4::Expr,e5::Expr,e6::Expr,e7::Expr)
    Expr(:call,:copy!,expr(o1),expr(o2),e3,e4,e5,e6,e7)
end
function copy!(e1::Expr,o2::Any,e3::Expr,e4::Expr,e5::Expr,e6::Expr,e7::Expr)
    Expr(:call,:copy!,e1,expr(o2),e3,e4,e5,e6,e7)
end
function copy!(o1::Any,e2::Expr,e3::Expr,e4::Expr,e5::Expr,e6::Expr,e7::Expr)
    Expr(:call,:copy!,expr(o1),e2,e3,e4,e5,e6,e7)
end
function copy!(e1::Expr,e2::Expr,e3::Expr,e4::Expr,e5::Expr,e6::Expr,e7::Expr)
    Expr(:call,:copy!,e1,e2,e3,e4,e5,e6,e7)
end
function copy!(e1::Expr,o2::Any,o3::Any,o4::Any)
    Expr(:call,:copy!,e1,expr(o2),expr(o3),expr(o4))
end
function copy!(o1::Any,e2::Expr,o3::Any,o4::Any)
    Expr(:call,:copy!,expr(o1),e2,expr(o3),expr(o4))
end
function copy!(e1::Expr,e2::Expr,o3::Any,o4::Any)
    Expr(:call,:copy!,e1,e2,expr(o3),expr(o4))
end
function copy!(o1::Any,o2::Any,o3::Any,e4::Expr)
    Expr(:call,:copy!,expr(o1),expr(o2),expr(o3),e4)
end
function copy!(e1::Expr,o2::Any,o3::Any,e4::Expr)
    Expr(:call,:copy!,e1,expr(o2),expr(o3),e4)
end
function copy!(o1::Any,e2::Expr,o3::Any,e4::Expr)
    Expr(:call,:copy!,expr(o1),e2,expr(o3),e4)
end
function copy!(e1::Expr,e2::Expr,o3::Any,e4::Expr)
    Expr(:call,:copy!,e1,e2,expr(o3),e4)
end
function copy!(e1::Expr,e2::Expr,e3::Expr,e4::Expr)
    Expr(:call,:copy!,e1,e2,e3,e4)
end
function copy!(e1::Expr,o2::Any)
    Expr(:call,:copy!,e1,expr(o2))
end
function copy!(e1::Expr,e2::Expr)
    Expr(:call,:copy!,e1,e2)
end
function copy!(e1::Expr,o2::Any,o3::Any)
    Expr(:call,:copy!,e1,expr(o2),expr(o3))
end
function copy!(o1::Any,e2::Expr,o3::Any)
    Expr(:call,:copy!,expr(o1),e2,expr(o3))
end
function copy!(e1::Expr,e2::Expr,o3::Any)
    Expr(:call,:copy!,e1,e2,expr(o3))
end
function copy!(e1::Expr,e2::Expr,e3::Expr)
    Expr(:call,:copy!,e1,e2,e3)
end
function copy!(e1::Expr,o2::Any,o3::Any,o4::Any,o5::Any)
    Expr(:call,:copy!,e1,expr(o2),expr(o3),expr(o4),expr(o5))
end
function copy!(o1::Any,e2::Expr,o3::Any,o4::Any,o5::Any)
    Expr(:call,:copy!,expr(o1),e2,expr(o3),expr(o4),expr(o5))
end
function copy!(e1::Expr,e2::Expr,o3::Any,o4::Any,o5::Any)
    Expr(:call,:copy!,e1,e2,expr(o3),expr(o4),expr(o5))
end
function copy!(o1::Any,o2::Any,o3::Any,e4::Expr,o5::Any)
    Expr(:call,:copy!,expr(o1),expr(o2),expr(o3),e4,expr(o5))
end
function copy!(e1::Expr,o2::Any,o3::Any,e4::Expr,o5::Any)
    Expr(:call,:copy!,e1,expr(o2),expr(o3),e4,expr(o5))
end
function copy!(o1::Any,e2::Expr,o3::Any,e4::Expr,o5::Any)
    Expr(:call,:copy!,expr(o1),e2,expr(o3),e4,expr(o5))
end
function copy!(e1::Expr,e2::Expr,o3::Any,e4::Expr,o5::Any)
    Expr(:call,:copy!,e1,e2,expr(o3),e4,expr(o5))
end
function copy!(o1::Any,o2::Any,o3::Any,o4::Any,e5::Expr)
    Expr(:call,:copy!,expr(o1),expr(o2),expr(o3),expr(o4),e5)
end
function copy!(e1::Expr,o2::Any,o3::Any,o4::Any,e5::Expr)
    Expr(:call,:copy!,e1,expr(o2),expr(o3),expr(o4),e5)
end
function copy!(o1::Any,e2::Expr,o3::Any,o4::Any,e5::Expr)
    Expr(:call,:copy!,expr(o1),e2,expr(o3),expr(o4),e5)
end
function copy!(e1::Expr,e2::Expr,o3::Any,o4::Any,e5::Expr)
    Expr(:call,:copy!,e1,e2,expr(o3),expr(o4),e5)
end
function copy!(o1::Any,o2::Any,o3::Any,e4::Expr,e5::Expr)
    Expr(:call,:copy!,expr(o1),expr(o2),expr(o3),e4,e5)
end
function copy!(e1::Expr,o2::Any,o3::Any,e4::Expr,e5::Expr)
    Expr(:call,:copy!,e1,expr(o2),expr(o3),e4,e5)
end
function copy!(o1::Any,e2::Expr,o3::Any,e4::Expr,e5::Expr)
    Expr(:call,:copy!,expr(o1),e2,expr(o3),e4,e5)
end
function copy!(e1::Expr,e2::Expr,o3::Any,e4::Expr,e5::Expr)
    Expr(:call,:copy!,e1,e2,expr(o3),e4,e5)
end
function copy!(e1::Expr,e2::Expr,e3::Expr,e4::Expr,e5::Expr)
    Expr(:call,:copy!,e1,e2,e3,e4,e5)
end
function copy!(e1::Expr,o2::Any,o3::Any,o4::Any,o5::Any,o6::Any)
    Expr(:call,:copy!,e1,expr(o2),expr(o3),expr(o4),expr(o5),expr(o6))
end
function copy!(o1::Any,e2::Expr,o3::Any,o4::Any,o5::Any,o6::Any)
    Expr(:call,:copy!,expr(o1),e2,expr(o3),expr(o4),expr(o5),expr(o6))
end
function copy!(e1::Expr,e2::Expr,o3::Any,o4::Any,o5::Any,o6::Any)
    Expr(:call,:copy!,e1,e2,expr(o3),expr(o4),expr(o5),expr(o6))
end
function copy!(o1::Any,o2::Any,e3::Expr,o4::Any,o5::Any,o6::Any)
    Expr(:call,:copy!,expr(o1),expr(o2),e3,expr(o4),expr(o5),expr(o6))
end
function copy!(e1::Expr,o2::Any,e3::Expr,o4::Any,o5::Any,o6::Any)
    Expr(:call,:copy!,e1,expr(o2),e3,expr(o4),expr(o5),expr(o6))
end
function copy!(o1::Any,e2::Expr,e3::Expr,o4::Any,o5::Any,o6::Any)
    Expr(:call,:copy!,expr(o1),e2,e3,expr(o4),expr(o5),expr(o6))
end
function copy!(e1::Expr,e2::Expr,e3::Expr,o4::Any,o5::Any,o6::Any)
    Expr(:call,:copy!,e1,e2,e3,expr(o4),expr(o5),expr(o6))
end
function copy!(o1::Any,o2::Any,o3::Any,e4::Expr,o5::Any,o6::Any)
    Expr(:call,:copy!,expr(o1),expr(o2),expr(o3),e4,expr(o5),expr(o6))
end
function copy!(e1::Expr,o2::Any,o3::Any,e4::Expr,o5::Any,o6::Any)
    Expr(:call,:copy!,e1,expr(o2),expr(o3),e4,expr(o5),expr(o6))
end
function copy!(o1::Any,e2::Expr,o3::Any,e4::Expr,o5::Any,o6::Any)
    Expr(:call,:copy!,expr(o1),e2,expr(o3),e4,expr(o5),expr(o6))
end
function copy!(e1::Expr,e2::Expr,o3::Any,e4::Expr,o5::Any,o6::Any)
    Expr(:call,:copy!,e1,e2,expr(o3),e4,expr(o5),expr(o6))
end
function copy!(o1::Any,o2::Any,e3::Expr,e4::Expr,o5::Any,o6::Any)
    Expr(:call,:copy!,expr(o1),expr(o2),e3,e4,expr(o5),expr(o6))
end
function copy!(e1::Expr,o2::Any,e3::Expr,e4::Expr,o5::Any,o6::Any)
    Expr(:call,:copy!,e1,expr(o2),e3,e4,expr(o5),expr(o6))
end
function copy!(o1::Any,e2::Expr,e3::Expr,e4::Expr,o5::Any,o6::Any)
    Expr(:call,:copy!,expr(o1),e2,e3,e4,expr(o5),expr(o6))
end
function copy!(e1::Expr,e2::Expr,e3::Expr,e4::Expr,o5::Any,o6::Any)
    Expr(:call,:copy!,e1,e2,e3,e4,expr(o5),expr(o6))
end
function copy!(o1::Any,o2::Any,o3::Any,o4::Any,e5::Expr,o6::Any)
    Expr(:call,:copy!,expr(o1),expr(o2),expr(o3),expr(o4),e5,expr(o6))
end
function copy!(e1::Expr,o2::Any,o3::Any,o4::Any,e5::Expr,o6::Any)
    Expr(:call,:copy!,e1,expr(o2),expr(o3),expr(o4),e5,expr(o6))
end
function copy!(o1::Any,e2::Expr,o3::Any,o4::Any,e5::Expr,o6::Any)
    Expr(:call,:copy!,expr(o1),e2,expr(o3),expr(o4),e5,expr(o6))
end
function copy!(e1::Expr,e2::Expr,o3::Any,o4::Any,e5::Expr,o6::Any)
    Expr(:call,:copy!,e1,e2,expr(o3),expr(o4),e5,expr(o6))
end
function copy!(o1::Any,o2::Any,e3::Expr,o4::Any,e5::Expr,o6::Any)
    Expr(:call,:copy!,expr(o1),expr(o2),e3,expr(o4),e5,expr(o6))
end
function copy!(e1::Expr,o2::Any,e3::Expr,o4::Any,e5::Expr,o6::Any)
    Expr(:call,:copy!,e1,expr(o2),e3,expr(o4),e5,expr(o6))
end
function copy!(o1::Any,e2::Expr,e3::Expr,o4::Any,e5::Expr,o6::Any)
    Expr(:call,:copy!,expr(o1),e2,e3,expr(o4),e5,expr(o6))
end
function copy!(e1::Expr,e2::Expr,e3::Expr,o4::Any,e5::Expr,o6::Any)
    Expr(:call,:copy!,e1,e2,e3,expr(o4),e5,expr(o6))
end
function copy!(o1::Any,o2::Any,o3::Any,e4::Expr,e5::Expr,o6::Any)
    Expr(:call,:copy!,expr(o1),expr(o2),expr(o3),e4,e5,expr(o6))
end
function copy!(e1::Expr,o2::Any,o3::Any,e4::Expr,e5::Expr,o6::Any)
    Expr(:call,:copy!,e1,expr(o2),expr(o3),e4,e5,expr(o6))
end
function copy!(o1::Any,e2::Expr,o3::Any,e4::Expr,e5::Expr,o6::Any)
    Expr(:call,:copy!,expr(o1),e2,expr(o3),e4,e5,expr(o6))
end
function copy!(e1::Expr,e2::Expr,o3::Any,e4::Expr,e5::Expr,o6::Any)
    Expr(:call,:copy!,e1,e2,expr(o3),e4,e5,expr(o6))
end
function copy!(o1::Any,o2::Any,e3::Expr,e4::Expr,e5::Expr,o6::Any)
    Expr(:call,:copy!,expr(o1),expr(o2),e3,e4,e5,expr(o6))
end
function copy!(e1::Expr,o2::Any,e3::Expr,e4::Expr,e5::Expr,o6::Any)
    Expr(:call,:copy!,e1,expr(o2),e3,e4,e5,expr(o6))
end
function copy!(o1::Any,e2::Expr,e3::Expr,e4::Expr,e5::Expr,o6::Any)
    Expr(:call,:copy!,expr(o1),e2,e3,e4,e5,expr(o6))
end
function copy!(e1::Expr,e2::Expr,e3::Expr,e4::Expr,e5::Expr,o6::Any)
    Expr(:call,:copy!,e1,e2,e3,e4,e5,expr(o6))
end
function copy!(o1::Any,o2::Any,o3::Any,o4::Any,o5::Any,e6::Expr)
    Expr(:call,:copy!,expr(o1),expr(o2),expr(o3),expr(o4),expr(o5),e6)
end
function copy!(e1::Expr,o2::Any,o3::Any,o4::Any,o5::Any,e6::Expr)
    Expr(:call,:copy!,e1,expr(o2),expr(o3),expr(o4),expr(o5),e6)
end
function copy!(o1::Any,e2::Expr,o3::Any,o4::Any,o5::Any,e6::Expr)
    Expr(:call,:copy!,expr(o1),e2,expr(o3),expr(o4),expr(o5),e6)
end
function copy!(e1::Expr,e2::Expr,o3::Any,o4::Any,o5::Any,e6::Expr)
    Expr(:call,:copy!,e1,e2,expr(o3),expr(o4),expr(o5),e6)
end
function copy!(o1::Any,o2::Any,e3::Expr,o4::Any,o5::Any,e6::Expr)
    Expr(:call,:copy!,expr(o1),expr(o2),e3,expr(o4),expr(o5),e6)
end
function copy!(e1::Expr,o2::Any,e3::Expr,o4::Any,o5::Any,e6::Expr)
    Expr(:call,:copy!,e1,expr(o2),e3,expr(o4),expr(o5),e6)
end
function copy!(o1::Any,e2::Expr,e3::Expr,o4::Any,o5::Any,e6::Expr)
    Expr(:call,:copy!,expr(o1),e2,e3,expr(o4),expr(o5),e6)
end
function copy!(e1::Expr,e2::Expr,e3::Expr,o4::Any,o5::Any,e6::Expr)
    Expr(:call,:copy!,e1,e2,e3,expr(o4),expr(o5),e6)
end
function copy!(o1::Any,o2::Any,o3::Any,e4::Expr,o5::Any,e6::Expr)
    Expr(:call,:copy!,expr(o1),expr(o2),expr(o3),e4,expr(o5),e6)
end
function copy!(e1::Expr,o2::Any,o3::Any,e4::Expr,o5::Any,e6::Expr)
    Expr(:call,:copy!,e1,expr(o2),expr(o3),e4,expr(o5),e6)
end
function copy!(o1::Any,e2::Expr,o3::Any,e4::Expr,o5::Any,e6::Expr)
    Expr(:call,:copy!,expr(o1),e2,expr(o3),e4,expr(o5),e6)
end
function copy!(e1::Expr,e2::Expr,o3::Any,e4::Expr,o5::Any,e6::Expr)
    Expr(:call,:copy!,e1,e2,expr(o3),e4,expr(o5),e6)
end
function copy!(o1::Any,o2::Any,e3::Expr,e4::Expr,o5::Any,e6::Expr)
    Expr(:call,:copy!,expr(o1),expr(o2),e3,e4,expr(o5),e6)
end
function copy!(e1::Expr,o2::Any,e3::Expr,e4::Expr,o5::Any,e6::Expr)
    Expr(:call,:copy!,e1,expr(o2),e3,e4,expr(o5),e6)
end
function copy!(o1::Any,e2::Expr,e3::Expr,e4::Expr,o5::Any,e6::Expr)
    Expr(:call,:copy!,expr(o1),e2,e3,e4,expr(o5),e6)
end
function copy!(e1::Expr,e2::Expr,e3::Expr,e4::Expr,o5::Any,e6::Expr)
    Expr(:call,:copy!,e1,e2,e3,e4,expr(o5),e6)
end
function copy!(o1::Any,o2::Any,o3::Any,o4::Any,e5::Expr,e6::Expr)
    Expr(:call,:copy!,expr(o1),expr(o2),expr(o3),expr(o4),e5,e6)
end
function copy!(e1::Expr,o2::Any,o3::Any,o4::Any,e5::Expr,e6::Expr)
    Expr(:call,:copy!,e1,expr(o2),expr(o3),expr(o4),e5,e6)
end
function copy!(o1::Any,e2::Expr,o3::Any,o4::Any,e5::Expr,e6::Expr)
    Expr(:call,:copy!,expr(o1),e2,expr(o3),expr(o4),e5,e6)
end
function copy!(e1::Expr,e2::Expr,o3::Any,o4::Any,e5::Expr,e6::Expr)
    Expr(:call,:copy!,e1,e2,expr(o3),expr(o4),e5,e6)
end
function copy!(o1::Any,o2::Any,e3::Expr,o4::Any,e5::Expr,e6::Expr)
    Expr(:call,:copy!,expr(o1),expr(o2),e3,expr(o4),e5,e6)
end
function copy!(e1::Expr,o2::Any,e3::Expr,o4::Any,e5::Expr,e6::Expr)
    Expr(:call,:copy!,e1,expr(o2),e3,expr(o4),e5,e6)
end
function copy!(o1::Any,e2::Expr,e3::Expr,o4::Any,e5::Expr,e6::Expr)
    Expr(:call,:copy!,expr(o1),e2,e3,expr(o4),e5,e6)
end
function copy!(e1::Expr,e2::Expr,e3::Expr,o4::Any,e5::Expr,e6::Expr)
    Expr(:call,:copy!,e1,e2,e3,expr(o4),e5,e6)
end
function copy!(o1::Any,o2::Any,o3::Any,e4::Expr,e5::Expr,e6::Expr)
    Expr(:call,:copy!,expr(o1),expr(o2),expr(o3),e4,e5,e6)
end
function copy!(e1::Expr,o2::Any,o3::Any,e4::Expr,e5::Expr,e6::Expr)
    Expr(:call,:copy!,e1,expr(o2),expr(o3),e4,e5,e6)
end
function copy!(o1::Any,e2::Expr,o3::Any,e4::Expr,e5::Expr,e6::Expr)
    Expr(:call,:copy!,expr(o1),e2,expr(o3),e4,e5,e6)
end
function copy!(e1::Expr,e2::Expr,o3::Any,e4::Expr,e5::Expr,e6::Expr)
    Expr(:call,:copy!,e1,e2,expr(o3),e4,e5,e6)
end
function copy!(o1::Any,o2::Any,e3::Expr,e4::Expr,e5::Expr,e6::Expr)
    Expr(:call,:copy!,expr(o1),expr(o2),e3,e4,e5,e6)
end
function copy!(e1::Expr,o2::Any,e3::Expr,e4::Expr,e5::Expr,e6::Expr)
    Expr(:call,:copy!,e1,expr(o2),e3,e4,e5,e6)
end
function copy!(o1::Any,e2::Expr,e3::Expr,e4::Expr,e5::Expr,e6::Expr)
    Expr(:call,:copy!,expr(o1),e2,e3,e4,e5,e6)
end
function copy!(e1::Expr,e2::Expr,e3::Expr,e4::Expr,e5::Expr,e6::Expr)
    Expr(:call,:copy!,e1,e2,e3,e4,e5,e6)
end
function copysign(e1::Expr,o2::Any)
    Expr(:call,:copysign,e1,expr(o2))
end
function copysign(o1::Any,e2::Expr)
    Expr(:call,:copysign,expr(o1),e2)
end
function copysign(e1::Expr,e2::Expr)
    Expr(:call,:copysign,e1,e2)
end
function cor(e1::Expr,o2::Any)
    Expr(:call,:cor,e1,expr(o2))
end
function cor(o1::Any,e2::Expr)
    Expr(:call,:cor,expr(o1),e2)
end
function cor(e1::Expr,e2::Expr)
    Expr(:call,:cor,e1,e2)
end
function cor(e1::Expr,o2::Any,o3::Any)
    Expr(:call,:cor,e1,expr(o2),expr(o3))
end
function cor(o1::Any,e2::Expr,o3::Any)
    Expr(:call,:cor,expr(o1),e2,expr(o3))
end
function cor(e1::Expr,e2::Expr,o3::Any)
    Expr(:call,:cor,e1,e2,expr(o3))
end
function cor(o1::Any,o2::Any,e3::Expr)
    Expr(:call,:cor,expr(o1),expr(o2),e3)
end
function cor(e1::Expr,o2::Any,e3::Expr)
    Expr(:call,:cor,e1,expr(o2),e3)
end
function cor(o1::Any,e2::Expr,e3::Expr)
    Expr(:call,:cor,expr(o1),e2,e3)
end
function cor(e1::Expr,e2::Expr,e3::Expr)
    Expr(:call,:cor,e1,e2,e3)
end
function cor(e1::Expr)
    Expr(:call,:cor,e1)
end
function cos(e1::Expr)
    Expr(:call,:cos,e1)
end
function cosc(e1::Expr)
    Expr(:call,:cosc,e1)
end
function cosh(e1::Expr)
    Expr(:call,:cosh,e1)
end
function cospi(e1::Expr)
    Expr(:call,:cospi,e1)
end
function cot(e1::Expr)
    Expr(:call,:cot,e1)
end
function cotd(e1::Expr)
    Expr(:call,:cotd,e1)
end
function coth(e1::Expr)
    Expr(:call,:coth,e1)
end
function count(e1::Expr)
    Expr(:call,:count,e1)
end
function count_ones(e1::Expr)
    Expr(:call,:count_ones,e1)
end
function count_zeros(e1::Expr)
    Expr(:call,:count_zeros,e1)
end
function countfrom(e1::Expr,o2::Any)
    Expr(:call,:countfrom,e1,expr(o2))
end
function countfrom(o1::Any,e2::Expr)
    Expr(:call,:countfrom,expr(o1),e2)
end
function countfrom(e1::Expr,e2::Expr)
    Expr(:call,:countfrom,e1,e2)
end
function countfrom(e1::Expr)
    Expr(:call,:countfrom,e1)
end
function countlines(e1::Expr,o2::Any)
    Expr(:call,:countlines,e1,expr(o2))
end
function countlines(o1::Any,e2::Expr)
    Expr(:call,:countlines,expr(o1),e2)
end
function countlines(e1::Expr,e2::Expr)
    Expr(:call,:countlines,e1,e2)
end
function countlines(e1::Expr)
    Expr(:call,:countlines,e1)
end
function cov(e1::Expr,o2::Any,o3::Any,o4::Any)
    Expr(:call,:cov,e1,expr(o2),expr(o3),expr(o4))
end
function cov(o1::Any,e2::Expr,o3::Any,o4::Any)
    Expr(:call,:cov,expr(o1),e2,expr(o3),expr(o4))
end
function cov(e1::Expr,e2::Expr,o3::Any,o4::Any)
    Expr(:call,:cov,e1,e2,expr(o3),expr(o4))
end
function cov(o1::Any,o2::Any,e3::Expr,o4::Any)
    Expr(:call,:cov,expr(o1),expr(o2),e3,expr(o4))
end
function cov(e1::Expr,o2::Any,e3::Expr,o4::Any)
    Expr(:call,:cov,e1,expr(o2),e3,expr(o4))
end
function cov(o1::Any,e2::Expr,e3::Expr,o4::Any)
    Expr(:call,:cov,expr(o1),e2,e3,expr(o4))
end
function cov(e1::Expr,e2::Expr,e3::Expr,o4::Any)
    Expr(:call,:cov,e1,e2,e3,expr(o4))
end
function cov(o1::Any,o2::Any,o3::Any,e4::Expr)
    Expr(:call,:cov,expr(o1),expr(o2),expr(o3),e4)
end
function cov(e1::Expr,o2::Any,o3::Any,e4::Expr)
    Expr(:call,:cov,e1,expr(o2),expr(o3),e4)
end
function cov(o1::Any,e2::Expr,o3::Any,e4::Expr)
    Expr(:call,:cov,expr(o1),e2,expr(o3),e4)
end
function cov(e1::Expr,e2::Expr,o3::Any,e4::Expr)
    Expr(:call,:cov,e1,e2,expr(o3),e4)
end
function cov(o1::Any,o2::Any,e3::Expr,e4::Expr)
    Expr(:call,:cov,expr(o1),expr(o2),e3,e4)
end
function cov(e1::Expr,o2::Any,e3::Expr,e4::Expr)
    Expr(:call,:cov,e1,expr(o2),e3,e4)
end
function cov(o1::Any,e2::Expr,e3::Expr,e4::Expr)
    Expr(:call,:cov,expr(o1),e2,e3,e4)
end
function cov(e1::Expr,e2::Expr,e3::Expr,e4::Expr)
    Expr(:call,:cov,e1,e2,e3,e4)
end
function cov(e1::Expr,o2::Any)
    Expr(:call,:cov,e1,expr(o2))
end
function cov(o1::Any,e2::Expr)
    Expr(:call,:cov,expr(o1),e2)
end
function cov(e1::Expr,e2::Expr)
    Expr(:call,:cov,e1,e2)
end
function cov(e1::Expr,o2::Any,o3::Any)
    Expr(:call,:cov,e1,expr(o2),expr(o3))
end
function cov(o1::Any,e2::Expr,o3::Any)
    Expr(:call,:cov,expr(o1),e2,expr(o3))
end
function cov(e1::Expr,e2::Expr,o3::Any)
    Expr(:call,:cov,e1,e2,expr(o3))
end
function cov(o1::Any,o2::Any,e3::Expr)
    Expr(:call,:cov,expr(o1),expr(o2),e3)
end
function cov(e1::Expr,o2::Any,e3::Expr)
    Expr(:call,:cov,e1,expr(o2),e3)
end
function cov(o1::Any,e2::Expr,e3::Expr)
    Expr(:call,:cov,expr(o1),e2,e3)
end
function cov(e1::Expr,e2::Expr,e3::Expr)
    Expr(:call,:cov,e1,e2,e3)
end
function cov(e1::Expr)
    Expr(:call,:cov,e1)
end
function cp(e1::Expr,o2::Any)
    Expr(:call,:cp,e1,expr(o2))
end
function cp(o1::Any,e2::Expr)
    Expr(:call,:cp,expr(o1),e2)
end
function cp(e1::Expr,e2::Expr)
    Expr(:call,:cp,e1,e2)
end
function cross(e1::Expr,o2::Any)
    Expr(:call,:cross,e1,expr(o2))
end
function cross(o1::Any,e2::Expr)
    Expr(:call,:cross,expr(o1),e2)
end
function cross(e1::Expr,e2::Expr)
    Expr(:call,:cross,e1,e2)
end
function csc(e1::Expr)
    Expr(:call,:csc,e1)
end
function cscd(e1::Expr)
    Expr(:call,:cscd,e1)
end
function csch(e1::Expr)
    Expr(:call,:csch,e1)
end
function ctranspose!(e1::Expr,o2::Any)
    Expr(:call,:ctranspose!,e1,expr(o2))
end
function ctranspose!(o1::Any,e2::Expr)
    Expr(:call,:ctranspose!,expr(o1),e2)
end
function ctranspose!(e1::Expr,e2::Expr)
    Expr(:call,:ctranspose!,e1,e2)
end
function ctranspose!(e1::Expr)
    Expr(:call,:ctranspose!,e1)
end
function cummax(e1::Expr,o2::Any)
    Expr(:call,:cummax,e1,expr(o2))
end
function cummax(o1::Any,e2::Expr)
    Expr(:call,:cummax,expr(o1),e2)
end
function cummax(e1::Expr,e2::Expr)
    Expr(:call,:cummax,e1,e2)
end
function cummax(e1::Expr)
    Expr(:call,:cummax,e1)
end
function cummin(e1::Expr,o2::Any)
    Expr(:call,:cummin,e1,expr(o2))
end
function cummin(o1::Any,e2::Expr)
    Expr(:call,:cummin,expr(o1),e2)
end
function cummin(e1::Expr,e2::Expr)
    Expr(:call,:cummin,e1,e2)
end
function cummin(e1::Expr)
    Expr(:call,:cummin,e1)
end
function cumprod(e1::Expr,o2::Any)
    Expr(:call,:cumprod,e1,expr(o2))
end
function cumprod(o1::Any,e2::Expr)
    Expr(:call,:cumprod,expr(o1),e2)
end
function cumprod(e1::Expr,e2::Expr)
    Expr(:call,:cumprod,e1,e2)
end
function cumprod(e1::Expr)
    Expr(:call,:cumprod,e1)
end
function cumprod!(o1::Any,o2::Any,e3::Expr)
    Expr(:call,:cumprod!,expr(o1),expr(o2),e3)
end
function cumprod!(o1::Any,e2::Expr,e3::Expr)
    Expr(:call,:cumprod!,expr(o1),e2,e3)
end
function cumprod!(e1::Expr,o2::Any,e3::Expr)
    Expr(:call,:cumprod!,e1,expr(o2),e3)
end
function cumprod!(e1::Expr,e2::Expr,e3::Expr)
    Expr(:call,:cumprod!,e1,e2,e3)
end
function cumsum(e1::Expr,o2::Any)
    Expr(:call,:cumsum,e1,expr(o2))
end
function cumsum(o1::Any,e2::Expr)
    Expr(:call,:cumsum,expr(o1),e2)
end
function cumsum(e1::Expr,e2::Expr)
    Expr(:call,:cumsum,e1,e2)
end
function cumsum(e1::Expr)
    Expr(:call,:cumsum,e1)
end
function cumsum!(o1::Any,e2::Expr)
    Expr(:call,:cumsum!,expr(o1),e2)
end
function cumsum!(e1::Expr,e2::Expr)
    Expr(:call,:cumsum!,e1,e2)
end
function cumsum!(o1::Any,o2::Any,e3::Expr)
    Expr(:call,:cumsum!,expr(o1),expr(o2),e3)
end
function cumsum!(o1::Any,e2::Expr,e3::Expr)
    Expr(:call,:cumsum!,expr(o1),e2,e3)
end
function cumsum!(e1::Expr,o2::Any,e3::Expr)
    Expr(:call,:cumsum!,e1,expr(o2),e3)
end
function cumsum!(e1::Expr,e2::Expr,e3::Expr)
    Expr(:call,:cumsum!,e1,e2,e3)
end
function cumsum_kbn(e1::Expr,o2::Any)
    Expr(:call,:cumsum_kbn,e1,expr(o2))
end
function cumsum_kbn(o1::Any,e2::Expr)
    Expr(:call,:cumsum_kbn,expr(o1),e2)
end
function cumsum_kbn(e1::Expr,e2::Expr)
    Expr(:call,:cumsum_kbn,e1,e2)
end
function cumsum_kbn(e1::Expr)
    Expr(:call,:cumsum_kbn,e1)
end
function dawson(e1::Expr)
    Expr(:call,:dawson,e1)
end
function dct(e1::Expr,o2::Any)
    Expr(:call,:dct,e1,expr(o2))
end
function dct(e1::Expr,e2::Expr)
    Expr(:call,:dct,e1,e2)
end
function dct(e1::Expr)
    Expr(:call,:dct,e1)
end
function dct!(e1::Expr,o2::Any)
    Expr(:call,:dct!,e1,expr(o2))
end
function dct!(e1::Expr,e2::Expr)
    Expr(:call,:dct!,e1,e2)
end
function dct!(e1::Expr)
    Expr(:call,:dct!,e1)
end
function dec(e1::Expr,o2::Any)
    Expr(:call,:dec,e1,expr(o2))
end
function dec(o1::Any,e2::Expr)
    Expr(:call,:dec,expr(o1),e2)
end
function dec(e1::Expr,e2::Expr)
    Expr(:call,:dec,e1,e2)
end
function dec(e1::Expr,o2::Any,o3::Any)
    Expr(:call,:dec,e1,expr(o2),expr(o3))
end
function dec(o1::Any,e2::Expr,o3::Any)
    Expr(:call,:dec,expr(o1),e2,expr(o3))
end
function dec(e1::Expr,e2::Expr,o3::Any)
    Expr(:call,:dec,e1,e2,expr(o3))
end
function dec(o1::Any,o2::Any,e3::Expr)
    Expr(:call,:dec,expr(o1),expr(o2),e3)
end
function dec(e1::Expr,o2::Any,e3::Expr)
    Expr(:call,:dec,e1,expr(o2),e3)
end
function dec(o1::Any,e2::Expr,e3::Expr)
    Expr(:call,:dec,expr(o1),e2,e3)
end
function dec(e1::Expr,e2::Expr,e3::Expr)
    Expr(:call,:dec,e1,e2,e3)
end
function dec(e1::Expr)
    Expr(:call,:dec,e1)
end
function deconv(e1::Expr,o2::Any)
    Expr(:call,:deconv,e1,expr(o2))
end
function deconv(o1::Any,e2::Expr)
    Expr(:call,:deconv,expr(o1),e2)
end
function deconv(e1::Expr,e2::Expr)
    Expr(:call,:deconv,e1,e2)
end
function deg2rad(e1::Expr)
    Expr(:call,:deg2rad,e1)
end
function delete!(e1::Expr,o2::Any)
    Expr(:call,:delete!,e1,expr(o2))
end
function delete!(e1::Expr,e2::Expr)
    Expr(:call,:delete!,e1,e2)
end
function delete!(e1::Expr,o2::Any,o3::Any)
    Expr(:call,:delete!,e1,expr(o2),expr(o3))
end
function delete!(o1::Any,e2::Expr,o3::Any)
    Expr(:call,:delete!,expr(o1),e2,expr(o3))
end
function delete!(e1::Expr,e2::Expr,o3::Any)
    Expr(:call,:delete!,e1,e2,expr(o3))
end
function delete!(e1::Expr,e2::Expr,e3::Expr)
    Expr(:call,:delete!,e1,e2,e3)
end
function delete!(e1::Expr)
    Expr(:call,:delete!,e1)
end
function deleteat!(e1::Expr,o2::Any)
    Expr(:call,:deleteat!,e1,expr(o2))
end
function deleteat!(e1::Expr,e2::Expr)
    Expr(:call,:deleteat!,e1,e2)
end
function den(e1::Expr)
    Expr(:call,:den,e1)
end
function deserialize(e1::Expr,o2::Any)
    Expr(:call,:deserialize,e1,expr(o2))
end
function deserialize(o1::Any,e2::Expr)
    Expr(:call,:deserialize,expr(o1),e2)
end
function deserialize(e1::Expr,e2::Expr)
    Expr(:call,:deserialize,e1,e2)
end
function deserialize(e1::Expr)
    Expr(:call,:deserialize,e1)
end
function det(e1::Expr)
    Expr(:call,:det,e1)
end
function detach(e1::Expr)
    Expr(:call,:detach,e1)
end
function diag(e1::Expr,o2::Any)
    Expr(:call,:diag,e1,expr(o2))
end
function diag(o1::Any,e2::Expr)
    Expr(:call,:diag,expr(o1),e2)
end
function diag(e1::Expr,e2::Expr)
    Expr(:call,:diag,e1,e2)
end
function diag(e1::Expr)
    Expr(:call,:diag,e1)
end
function diagind(e1::Expr,o2::Any)
    Expr(:call,:diagind,e1,expr(o2))
end
function diagind(o1::Any,e2::Expr)
    Expr(:call,:diagind,expr(o1),e2)
end
function diagind(e1::Expr,e2::Expr)
    Expr(:call,:diagind,e1,e2)
end
function diagind(e1::Expr,o2::Any,o3::Any)
    Expr(:call,:diagind,e1,expr(o2),expr(o3))
end
function diagind(o1::Any,e2::Expr,o3::Any)
    Expr(:call,:diagind,expr(o1),e2,expr(o3))
end
function diagind(e1::Expr,e2::Expr,o3::Any)
    Expr(:call,:diagind,e1,e2,expr(o3))
end
function diagind(o1::Any,o2::Any,e3::Expr)
    Expr(:call,:diagind,expr(o1),expr(o2),e3)
end
function diagind(e1::Expr,o2::Any,e3::Expr)
    Expr(:call,:diagind,e1,expr(o2),e3)
end
function diagind(o1::Any,e2::Expr,e3::Expr)
    Expr(:call,:diagind,expr(o1),e2,e3)
end
function diagind(e1::Expr,e2::Expr,e3::Expr)
    Expr(:call,:diagind,e1,e2,e3)
end
function diagind(e1::Expr)
    Expr(:call,:diagind,e1)
end
function diagm(e1::Expr,o2::Any)
    Expr(:call,:diagm,e1,expr(o2))
end
function diagm(o1::Any,e2::Expr)
    Expr(:call,:diagm,expr(o1),e2)
end
function diagm(e1::Expr,e2::Expr)
    Expr(:call,:diagm,e1,e2)
end
function diagm(e1::Expr)
    Expr(:call,:diagm,e1)
end
function diff(e1::Expr,o2::Any)
    Expr(:call,:diff,e1,expr(o2))
end
function diff(o1::Any,e2::Expr)
    Expr(:call,:diff,expr(o1),e2)
end
function diff(e1::Expr,e2::Expr)
    Expr(:call,:diff,e1,e2)
end
function diff(e1::Expr)
    Expr(:call,:diff,e1)
end
function digamma(e1::Expr)
    Expr(:call,:digamma,e1)
end
function digits(e1::Expr,o2::Any,o3::Any,o4::Any)
    Expr(:call,:digits,e1,expr(o2),expr(o3),expr(o4))
end
function digits(o1::Any,e2::Expr,o3::Any,o4::Any)
    Expr(:call,:digits,expr(o1),e2,expr(o3),expr(o4))
end
function digits(e1::Expr,e2::Expr,o3::Any,o4::Any)
    Expr(:call,:digits,e1,e2,expr(o3),expr(o4))
end
function digits(o1::Any,o2::Any,e3::Expr,o4::Any)
    Expr(:call,:digits,expr(o1),expr(o2),e3,expr(o4))
end
function digits(e1::Expr,o2::Any,e3::Expr,o4::Any)
    Expr(:call,:digits,e1,expr(o2),e3,expr(o4))
end
function digits(o1::Any,e2::Expr,e3::Expr,o4::Any)
    Expr(:call,:digits,expr(o1),e2,e3,expr(o4))
end
function digits(e1::Expr,e2::Expr,e3::Expr,o4::Any)
    Expr(:call,:digits,e1,e2,e3,expr(o4))
end
function digits(o1::Any,o2::Any,o3::Any,e4::Expr)
    Expr(:call,:digits,expr(o1),expr(o2),expr(o3),e4)
end
function digits(e1::Expr,o2::Any,o3::Any,e4::Expr)
    Expr(:call,:digits,e1,expr(o2),expr(o3),e4)
end
function digits(o1::Any,e2::Expr,o3::Any,e4::Expr)
    Expr(:call,:digits,expr(o1),e2,expr(o3),e4)
end
function digits(e1::Expr,e2::Expr,o3::Any,e4::Expr)
    Expr(:call,:digits,e1,e2,expr(o3),e4)
end
function digits(o1::Any,o2::Any,e3::Expr,e4::Expr)
    Expr(:call,:digits,expr(o1),expr(o2),e3,e4)
end
function digits(e1::Expr,o2::Any,e3::Expr,e4::Expr)
    Expr(:call,:digits,e1,expr(o2),e3,e4)
end
function digits(o1::Any,e2::Expr,e3::Expr,e4::Expr)
    Expr(:call,:digits,expr(o1),e2,e3,e4)
end
function digits(e1::Expr,e2::Expr,e3::Expr,e4::Expr)
    Expr(:call,:digits,e1,e2,e3,e4)
end
function digits(e1::Expr,o2::Any)
    Expr(:call,:digits,e1,expr(o2))
end
function digits(o1::Any,e2::Expr)
    Expr(:call,:digits,expr(o1),e2)
end
function digits(e1::Expr,e2::Expr)
    Expr(:call,:digits,e1,e2)
end
function digits(e1::Expr,o2::Any,o3::Any)
    Expr(:call,:digits,e1,expr(o2),expr(o3))
end
function digits(o1::Any,e2::Expr,o3::Any)
    Expr(:call,:digits,expr(o1),e2,expr(o3))
end
function digits(e1::Expr,e2::Expr,o3::Any)
    Expr(:call,:digits,e1,e2,expr(o3))
end
function digits(o1::Any,o2::Any,e3::Expr)
    Expr(:call,:digits,expr(o1),expr(o2),e3)
end
function digits(e1::Expr,o2::Any,e3::Expr)
    Expr(:call,:digits,e1,expr(o2),e3)
end
function digits(o1::Any,e2::Expr,e3::Expr)
    Expr(:call,:digits,expr(o1),e2,e3)
end
function digits(e1::Expr,e2::Expr,e3::Expr)
    Expr(:call,:digits,e1,e2,e3)
end
function digits(e1::Expr)
    Expr(:call,:digits,e1)
end
function digits!(e1::Expr,o2::Any)
    Expr(:call,:digits!,e1,expr(o2))
end
function digits!(o1::Any,e2::Expr)
    Expr(:call,:digits!,expr(o1),e2)
end
function digits!(e1::Expr,e2::Expr)
    Expr(:call,:digits!,e1,e2)
end
function digits!(e1::Expr,o2::Any,o3::Any)
    Expr(:call,:digits!,e1,expr(o2),expr(o3))
end
function digits!(o1::Any,e2::Expr,o3::Any)
    Expr(:call,:digits!,expr(o1),e2,expr(o3))
end
function digits!(e1::Expr,e2::Expr,o3::Any)
    Expr(:call,:digits!,e1,e2,expr(o3))
end
function digits!(o1::Any,o2::Any,e3::Expr)
    Expr(:call,:digits!,expr(o1),expr(o2),e3)
end
function digits!(e1::Expr,o2::Any,e3::Expr)
    Expr(:call,:digits!,e1,expr(o2),e3)
end
function digits!(o1::Any,e2::Expr,e3::Expr)
    Expr(:call,:digits!,expr(o1),e2,e3)
end
function digits!(e1::Expr,e2::Expr,e3::Expr)
    Expr(:call,:digits!,e1,e2,e3)
end
function dirname(e1::Expr)
    Expr(:call,:dirname,e1)
end
function disable_sigint(e1::Expr)
    Expr(:call,:disable_sigint,e1)
end
function display(e1::Expr,o2::Any)
    Expr(:call,:display,e1,expr(o2))
end
function display(e1::Expr,e2::Expr)
    Expr(:call,:display,e1,e2)
end
function display(e1::Expr,o2::Any,o3::Any)
    Expr(:call,:display,e1,expr(o2),expr(o3))
end
function display(o1::Any,e2::Expr,o3::Any)
    Expr(:call,:display,expr(o1),e2,expr(o3))
end
function display(e1::Expr,e2::Expr,o3::Any)
    Expr(:call,:display,e1,e2,expr(o3))
end
function display(e1::Expr,e2::Expr,e3::Expr)
    Expr(:call,:display,e1,e2,e3)
end
function displayable(e1::Expr,o2::Any)
    Expr(:call,:displayable,e1,expr(o2))
end
function displayable(o1::Any,e2::Expr)
    Expr(:call,:displayable,expr(o1),e2)
end
function displayable(e1::Expr,e2::Expr)
    Expr(:call,:displayable,e1,e2)
end
function displayable(e1::Expr)
    Expr(:call,:displayable,e1)
end
function displaysize(e1::Expr)
    Expr(:call,:displaysize,e1)
end
function div(o1::Any,e2::Expr)
    Expr(:call,:div,expr(o1),e2)
end
function div(e1::Expr,e2::Expr)
    Expr(:call,:div,e1,e2)
end
function done(e1::Expr,o2::Any)
    Expr(:call,:done,e1,expr(o2))
end
function done(e1::Expr,e2::Expr)
    Expr(:call,:done,e1,e2)
end
function dot(e1::Expr,o2::Any,o3::Any,o4::Any)
    Expr(:call,:dot,e1,expr(o2),expr(o3),expr(o4))
end
function dot(o1::Any,e2::Expr,o3::Any,o4::Any)
    Expr(:call,:dot,expr(o1),e2,expr(o3),expr(o4))
end
function dot(e1::Expr,e2::Expr,o3::Any,o4::Any)
    Expr(:call,:dot,e1,e2,expr(o3),expr(o4))
end
function dot(o1::Any,o2::Any,e3::Expr,o4::Any)
    Expr(:call,:dot,expr(o1),expr(o2),e3,expr(o4))
end
function dot(e1::Expr,o2::Any,e3::Expr,o4::Any)
    Expr(:call,:dot,e1,expr(o2),e3,expr(o4))
end
function dot(o1::Any,e2::Expr,e3::Expr,o4::Any)
    Expr(:call,:dot,expr(o1),e2,e3,expr(o4))
end
function dot(e1::Expr,e2::Expr,e3::Expr,o4::Any)
    Expr(:call,:dot,e1,e2,e3,expr(o4))
end
function dot(o1::Any,o2::Any,o3::Any,e4::Expr)
    Expr(:call,:dot,expr(o1),expr(o2),expr(o3),e4)
end
function dot(e1::Expr,o2::Any,o3::Any,e4::Expr)
    Expr(:call,:dot,e1,expr(o2),expr(o3),e4)
end
function dot(o1::Any,e2::Expr,o3::Any,e4::Expr)
    Expr(:call,:dot,expr(o1),e2,expr(o3),e4)
end
function dot(e1::Expr,e2::Expr,o3::Any,e4::Expr)
    Expr(:call,:dot,e1,e2,expr(o3),e4)
end
function dot(o1::Any,o2::Any,e3::Expr,e4::Expr)
    Expr(:call,:dot,expr(o1),expr(o2),e3,e4)
end
function dot(e1::Expr,o2::Any,e3::Expr,e4::Expr)
    Expr(:call,:dot,e1,expr(o2),e3,e4)
end
function dot(o1::Any,e2::Expr,e3::Expr,e4::Expr)
    Expr(:call,:dot,expr(o1),e2,e3,e4)
end
function dot(e1::Expr,e2::Expr,e3::Expr,e4::Expr)
    Expr(:call,:dot,e1,e2,e3,e4)
end
function dot(e1::Expr,o2::Any)
    Expr(:call,:dot,e1,expr(o2))
end
function dot(o1::Any,e2::Expr)
    Expr(:call,:dot,expr(o1),e2)
end
function dot(e1::Expr,e2::Expr)
    Expr(:call,:dot,e1,e2)
end
function dot(e1::Expr,o2::Any,o3::Any,o4::Any,o5::Any)
    Expr(:call,:dot,e1,expr(o2),expr(o3),expr(o4),expr(o5))
end
function dot(o1::Any,e2::Expr,o3::Any,o4::Any,o5::Any)
    Expr(:call,:dot,expr(o1),e2,expr(o3),expr(o4),expr(o5))
end
function dot(e1::Expr,e2::Expr,o3::Any,o4::Any,o5::Any)
    Expr(:call,:dot,e1,e2,expr(o3),expr(o4),expr(o5))
end
function dot(o1::Any,o2::Any,e3::Expr,o4::Any,o5::Any)
    Expr(:call,:dot,expr(o1),expr(o2),e3,expr(o4),expr(o5))
end
function dot(e1::Expr,o2::Any,e3::Expr,o4::Any,o5::Any)
    Expr(:call,:dot,e1,expr(o2),e3,expr(o4),expr(o5))
end
function dot(o1::Any,e2::Expr,e3::Expr,o4::Any,o5::Any)
    Expr(:call,:dot,expr(o1),e2,e3,expr(o4),expr(o5))
end
function dot(e1::Expr,e2::Expr,e3::Expr,o4::Any,o5::Any)
    Expr(:call,:dot,e1,e2,e3,expr(o4),expr(o5))
end
function dot(o1::Any,o2::Any,o3::Any,e4::Expr,o5::Any)
    Expr(:call,:dot,expr(o1),expr(o2),expr(o3),e4,expr(o5))
end
function dot(e1::Expr,o2::Any,o3::Any,e4::Expr,o5::Any)
    Expr(:call,:dot,e1,expr(o2),expr(o3),e4,expr(o5))
end
function dot(o1::Any,e2::Expr,o3::Any,e4::Expr,o5::Any)
    Expr(:call,:dot,expr(o1),e2,expr(o3),e4,expr(o5))
end
function dot(e1::Expr,e2::Expr,o3::Any,e4::Expr,o5::Any)
    Expr(:call,:dot,e1,e2,expr(o3),e4,expr(o5))
end
function dot(o1::Any,o2::Any,e3::Expr,e4::Expr,o5::Any)
    Expr(:call,:dot,expr(o1),expr(o2),e3,e4,expr(o5))
end
function dot(e1::Expr,o2::Any,e3::Expr,e4::Expr,o5::Any)
    Expr(:call,:dot,e1,expr(o2),e3,e4,expr(o5))
end
function dot(o1::Any,e2::Expr,e3::Expr,e4::Expr,o5::Any)
    Expr(:call,:dot,expr(o1),e2,e3,e4,expr(o5))
end
function dot(e1::Expr,e2::Expr,e3::Expr,e4::Expr,o5::Any)
    Expr(:call,:dot,e1,e2,e3,e4,expr(o5))
end
function dot(o1::Any,o2::Any,o3::Any,o4::Any,e5::Expr)
    Expr(:call,:dot,expr(o1),expr(o2),expr(o3),expr(o4),e5)
end
function dot(e1::Expr,o2::Any,o3::Any,o4::Any,e5::Expr)
    Expr(:call,:dot,e1,expr(o2),expr(o3),expr(o4),e5)
end
function dot(o1::Any,e2::Expr,o3::Any,o4::Any,e5::Expr)
    Expr(:call,:dot,expr(o1),e2,expr(o3),expr(o4),e5)
end
function dot(e1::Expr,e2::Expr,o3::Any,o4::Any,e5::Expr)
    Expr(:call,:dot,e1,e2,expr(o3),expr(o4),e5)
end
function dot(o1::Any,o2::Any,e3::Expr,o4::Any,e5::Expr)
    Expr(:call,:dot,expr(o1),expr(o2),e3,expr(o4),e5)
end
function dot(e1::Expr,o2::Any,e3::Expr,o4::Any,e5::Expr)
    Expr(:call,:dot,e1,expr(o2),e3,expr(o4),e5)
end
function dot(o1::Any,e2::Expr,e3::Expr,o4::Any,e5::Expr)
    Expr(:call,:dot,expr(o1),e2,e3,expr(o4),e5)
end
function dot(e1::Expr,e2::Expr,e3::Expr,o4::Any,e5::Expr)
    Expr(:call,:dot,e1,e2,e3,expr(o4),e5)
end
function dot(o1::Any,o2::Any,o3::Any,e4::Expr,e5::Expr)
    Expr(:call,:dot,expr(o1),expr(o2),expr(o3),e4,e5)
end
function dot(e1::Expr,o2::Any,o3::Any,e4::Expr,e5::Expr)
    Expr(:call,:dot,e1,expr(o2),expr(o3),e4,e5)
end
function dot(o1::Any,e2::Expr,o3::Any,e4::Expr,e5::Expr)
    Expr(:call,:dot,expr(o1),e2,expr(o3),e4,e5)
end
function dot(e1::Expr,e2::Expr,o3::Any,e4::Expr,e5::Expr)
    Expr(:call,:dot,e1,e2,expr(o3),e4,e5)
end
function dot(o1::Any,o2::Any,e3::Expr,e4::Expr,e5::Expr)
    Expr(:call,:dot,expr(o1),expr(o2),e3,e4,e5)
end
function dot(e1::Expr,o2::Any,e3::Expr,e4::Expr,e5::Expr)
    Expr(:call,:dot,e1,expr(o2),e3,e4,e5)
end
function dot(o1::Any,e2::Expr,e3::Expr,e4::Expr,e5::Expr)
    Expr(:call,:dot,expr(o1),e2,e3,e4,e5)
end
function dot(e1::Expr,e2::Expr,e3::Expr,e4::Expr,e5::Expr)
    Expr(:call,:dot,e1,e2,e3,e4,e5)
end
function download(e1::Expr,o2::Any)
    Expr(:call,:download,e1,expr(o2))
end
function download(o1::Any,e2::Expr)
    Expr(:call,:download,expr(o1),e2)
end
function download(e1::Expr,e2::Expr)
    Expr(:call,:download,e1,e2)
end
function download(e1::Expr)
    Expr(:call,:download,e1)
end
function drop(o1::Any,e2::Expr)
    Expr(:call,:drop,expr(o1),e2)
end
function drop(e1::Expr,e2::Expr)
    Expr(:call,:drop,e1,e2)
end
function dropzeros(e1::Expr,o2::Any)
    Expr(:call,:dropzeros,e1,expr(o2))
end
function dropzeros(o1::Any,e2::Expr)
    Expr(:call,:dropzeros,expr(o1),e2)
end
function dropzeros(e1::Expr,e2::Expr)
    Expr(:call,:dropzeros,e1,e2)
end
function dropzeros(e1::Expr)
    Expr(:call,:dropzeros,e1)
end
function dropzeros!(e1::Expr,o2::Any)
    Expr(:call,:dropzeros!,e1,expr(o2))
end
function dropzeros!(o1::Any,e2::Expr)
    Expr(:call,:dropzeros!,expr(o1),e2)
end
function dropzeros!(e1::Expr,e2::Expr)
    Expr(:call,:dropzeros!,e1,e2)
end
function dropzeros!(e1::Expr)
    Expr(:call,:dropzeros!,e1)
end
function dump(e1::Expr,o2::Any,o3::Any,o4::Any)
    Expr(:call,:dump,e1,expr(o2),expr(o3),expr(o4))
end
function dump(o1::Any,o2::Any,e3::Expr,o4::Any)
    Expr(:call,:dump,expr(o1),expr(o2),e3,expr(o4))
end
function dump(e1::Expr,o2::Any,e3::Expr,o4::Any)
    Expr(:call,:dump,e1,expr(o2),e3,expr(o4))
end
function dump(e1::Expr,o2::Any,e3::Expr,e4::Expr)
    Expr(:call,:dump,e1,expr(o2),e3,e4)
end
function dump(e1::Expr,e2::Expr,e3::Expr,o4::Any)
    Expr(:call,:dump,e1,e2,e3,expr(o4))
end
function dump(e1::Expr,e2::Expr,e3::Expr,e4::Expr)
    Expr(:call,:dump,e1,e2,e3,e4)
end
function dump(e1::Expr,o2::Any)
    Expr(:call,:dump,e1,expr(o2))
end
function dump(e1::Expr,e2::Expr)
    Expr(:call,:dump,e1,e2)
end
function eachindex(e1::Expr,o2::Any)
    Expr(:call,:eachindex,e1,expr(o2))
end
function eachindex(o1::Any,e2::Expr)
    Expr(:call,:eachindex,expr(o1),e2)
end
function eachindex(e1::Expr,e2::Expr)
    Expr(:call,:eachindex,e1,e2)
end
function eachindex(e1::Expr,o2::Any,o3::Any)
    Expr(:call,:eachindex,e1,expr(o2),expr(o3))
end
function eachindex(o1::Any,e2::Expr,o3::Any)
    Expr(:call,:eachindex,expr(o1),e2,expr(o3))
end
function eachindex(e1::Expr,e2::Expr,o3::Any)
    Expr(:call,:eachindex,e1,e2,expr(o3))
end
function eachindex(o1::Any,o2::Any,e3::Expr)
    Expr(:call,:eachindex,expr(o1),expr(o2),e3)
end
function eachindex(e1::Expr,o2::Any,e3::Expr)
    Expr(:call,:eachindex,e1,expr(o2),e3)
end
function eachindex(o1::Any,e2::Expr,e3::Expr)
    Expr(:call,:eachindex,expr(o1),e2,e3)
end
function eachindex(e1::Expr,e2::Expr,e3::Expr)
    Expr(:call,:eachindex,e1,e2,e3)
end
function eachindex(e1::Expr)
    Expr(:call,:eachindex,e1)
end
function eachline(e1::Expr,o2::Any)
    Expr(:call,:eachline,e1,expr(o2))
end
function eachline(e1::Expr,e2::Expr)
    Expr(:call,:eachline,e1,e2)
end
function eachline(e1::Expr)
    Expr(:call,:eachline,e1)
end
function eachmatch(e1::Expr,o2::Any)
    Expr(:call,:eachmatch,e1,expr(o2))
end
function eachmatch(o1::Any,e2::Expr)
    Expr(:call,:eachmatch,expr(o1),e2)
end
function eachmatch(e1::Expr,e2::Expr)
    Expr(:call,:eachmatch,e1,e2)
end
function eachmatch(e1::Expr,o2::Any,o3::Any)
    Expr(:call,:eachmatch,e1,expr(o2),expr(o3))
end
function eachmatch(o1::Any,e2::Expr,o3::Any)
    Expr(:call,:eachmatch,expr(o1),e2,expr(o3))
end
function eachmatch(e1::Expr,e2::Expr,o3::Any)
    Expr(:call,:eachmatch,e1,e2,expr(o3))
end
function eachmatch(o1::Any,o2::Any,e3::Expr)
    Expr(:call,:eachmatch,expr(o1),expr(o2),e3)
end
function eachmatch(e1::Expr,o2::Any,e3::Expr)
    Expr(:call,:eachmatch,e1,expr(o2),e3)
end
function eachmatch(o1::Any,e2::Expr,e3::Expr)
    Expr(:call,:eachmatch,expr(o1),e2,e3)
end
function eachmatch(e1::Expr,e2::Expr,e3::Expr)
    Expr(:call,:eachmatch,e1,e2,e3)
end
function eig(e1::Expr,o2::Any)
    Expr(:call,:eig,e1,expr(o2))
end
function eig(o1::Any,e2::Expr)
    Expr(:call,:eig,expr(o1),e2)
end
function eig(e1::Expr,e2::Expr)
    Expr(:call,:eig,e1,e2)
end
function eig(e1::Expr)
    Expr(:call,:eig,e1)
end
function eigfact(e1::Expr,o2::Any)
    Expr(:call,:eigfact,e1,expr(o2))
end
function eigfact(o1::Any,e2::Expr)
    Expr(:call,:eigfact,expr(o1),e2)
end
function eigfact(e1::Expr,e2::Expr)
    Expr(:call,:eigfact,e1,e2)
end
function eigfact(e1::Expr,o2::Any,o3::Any)
    Expr(:call,:eigfact,e1,expr(o2),expr(o3))
end
function eigfact(o1::Any,e2::Expr,o3::Any)
    Expr(:call,:eigfact,expr(o1),e2,expr(o3))
end
function eigfact(e1::Expr,e2::Expr,o3::Any)
    Expr(:call,:eigfact,e1,e2,expr(o3))
end
function eigfact(o1::Any,o2::Any,e3::Expr)
    Expr(:call,:eigfact,expr(o1),expr(o2),e3)
end
function eigfact(e1::Expr,o2::Any,e3::Expr)
    Expr(:call,:eigfact,e1,expr(o2),e3)
end
function eigfact(o1::Any,e2::Expr,e3::Expr)
    Expr(:call,:eigfact,expr(o1),e2,e3)
end
function eigfact(e1::Expr,e2::Expr,e3::Expr)
    Expr(:call,:eigfact,e1,e2,e3)
end
function eigfact(e1::Expr)
    Expr(:call,:eigfact,e1)
end
function eigfact!(e1::Expr,o2::Any)
    Expr(:call,:eigfact!,e1,expr(o2))
end
function eigfact!(o1::Any,e2::Expr)
    Expr(:call,:eigfact!,expr(o1),e2)
end
function eigfact!(e1::Expr,e2::Expr)
    Expr(:call,:eigfact!,e1,e2)
end
function eigfact!(e1::Expr,o2::Any,o3::Any)
    Expr(:call,:eigfact!,e1,expr(o2),expr(o3))
end
function eigfact!(o1::Any,e2::Expr,o3::Any)
    Expr(:call,:eigfact!,expr(o1),e2,expr(o3))
end
function eigfact!(e1::Expr,e2::Expr,o3::Any)
    Expr(:call,:eigfact!,e1,e2,expr(o3))
end
function eigfact!(o1::Any,o2::Any,e3::Expr)
    Expr(:call,:eigfact!,expr(o1),expr(o2),e3)
end
function eigfact!(e1::Expr,o2::Any,e3::Expr)
    Expr(:call,:eigfact!,e1,expr(o2),e3)
end
function eigfact!(o1::Any,e2::Expr,e3::Expr)
    Expr(:call,:eigfact!,expr(o1),e2,e3)
end
function eigfact!(e1::Expr,e2::Expr,e3::Expr)
    Expr(:call,:eigfact!,e1,e2,e3)
end
function eigfact!(e1::Expr)
    Expr(:call,:eigfact!,e1)
end
function eigmax(e1::Expr)
    Expr(:call,:eigmax,e1)
end
function eigmin(e1::Expr)
    Expr(:call,:eigmin,e1)
end
function eigvals(e1::Expr,o2::Any)
    Expr(:call,:eigvals,e1,expr(o2))
end
function eigvals(o1::Any,e2::Expr)
    Expr(:call,:eigvals,expr(o1),e2)
end
function eigvals(e1::Expr,e2::Expr)
    Expr(:call,:eigvals,e1,e2)
end
function eigvals(e1::Expr,o2::Any,o3::Any)
    Expr(:call,:eigvals,e1,expr(o2),expr(o3))
end
function eigvals(o1::Any,e2::Expr,o3::Any)
    Expr(:call,:eigvals,expr(o1),e2,expr(o3))
end
function eigvals(e1::Expr,e2::Expr,o3::Any)
    Expr(:call,:eigvals,e1,e2,expr(o3))
end
function eigvals(o1::Any,o2::Any,e3::Expr)
    Expr(:call,:eigvals,expr(o1),expr(o2),e3)
end
function eigvals(e1::Expr,o2::Any,e3::Expr)
    Expr(:call,:eigvals,e1,expr(o2),e3)
end
function eigvals(o1::Any,e2::Expr,e3::Expr)
    Expr(:call,:eigvals,expr(o1),e2,e3)
end
function eigvals(e1::Expr,e2::Expr,e3::Expr)
    Expr(:call,:eigvals,e1,e2,e3)
end
function eigvals(e1::Expr)
    Expr(:call,:eigvals,e1)
end
function eigvals!(e1::Expr,o2::Any)
    Expr(:call,:eigvals!,e1,expr(o2))
end
function eigvals!(o1::Any,e2::Expr)
    Expr(:call,:eigvals!,expr(o1),e2)
end
function eigvals!(e1::Expr,e2::Expr)
    Expr(:call,:eigvals!,e1,e2)
end
function eigvals!(e1::Expr,o2::Any,o3::Any)
    Expr(:call,:eigvals!,e1,expr(o2),expr(o3))
end
function eigvals!(o1::Any,e2::Expr,o3::Any)
    Expr(:call,:eigvals!,expr(o1),e2,expr(o3))
end
function eigvals!(e1::Expr,e2::Expr,o3::Any)
    Expr(:call,:eigvals!,e1,e2,expr(o3))
end
function eigvals!(o1::Any,o2::Any,e3::Expr)
    Expr(:call,:eigvals!,expr(o1),expr(o2),e3)
end
function eigvals!(e1::Expr,o2::Any,e3::Expr)
    Expr(:call,:eigvals!,e1,expr(o2),e3)
end
function eigvals!(o1::Any,e2::Expr,e3::Expr)
    Expr(:call,:eigvals!,expr(o1),e2,e3)
end
function eigvals!(e1::Expr,e2::Expr,e3::Expr)
    Expr(:call,:eigvals!,e1,e2,e3)
end
function eigvals!(e1::Expr)
    Expr(:call,:eigvals!,e1)
end
function eigvecs(e1::Expr,o2::Any)
    Expr(:call,:eigvecs,e1,expr(o2))
end
function eigvecs(o1::Any,e2::Expr)
    Expr(:call,:eigvecs,expr(o1),e2)
end
function eigvecs(e1::Expr,e2::Expr)
    Expr(:call,:eigvecs,e1,e2)
end
function eigvecs(e1::Expr)
    Expr(:call,:eigvecs,e1)
end
function eltype(e1::Expr,o2::Any)
    Expr(:call,:eltype,e1,expr(o2))
end
function eltype(o1::Any,e2::Expr)
    Expr(:call,:eltype,expr(o1),e2)
end
function eltype(e1::Expr,e2::Expr)
    Expr(:call,:eltype,e1,e2)
end
function empty!(e1::Expr,o2::Any)
    Expr(:call,:empty!,e1,expr(o2))
end
function empty!(o1::Any,e2::Expr)
    Expr(:call,:empty!,expr(o1),e2)
end
function empty!(e1::Expr,e2::Expr)
    Expr(:call,:empty!,e1,e2)
end
function empty!(e1::Expr)
    Expr(:call,:empty!,e1)
end
function endof(e1::Expr)
    Expr(:call,:endof,e1)
end
function endswith(e1::Expr,o2::Any)
    Expr(:call,:endswith,e1,expr(o2))
end
function endswith(o1::Any,e2::Expr)
    Expr(:call,:endswith,expr(o1),e2)
end
function endswith(e1::Expr,e2::Expr)
    Expr(:call,:endswith,e1,e2)
end
function eof(e1::Expr)
    Expr(:call,:eof,e1)
end
function eps(e1::Expr)
    Expr(:call,:eps,e1)
end
function erf(e1::Expr)
    Expr(:call,:erf,e1)
end
function erfc(e1::Expr)
    Expr(:call,:erfc,e1)
end
function erfcinv(e1::Expr)
    Expr(:call,:erfcinv,e1)
end
function erfcx(e1::Expr)
    Expr(:call,:erfcx,e1)
end
function erfi(e1::Expr)
    Expr(:call,:erfi,e1)
end
function erfinv(e1::Expr)
    Expr(:call,:erfinv,e1)
end
function escape_string(o1::Any,e2::Expr,o3::Any)
    Expr(:call,:escape_string,expr(o1),e2,expr(o3))
end
function escape_string(o1::Any,o2::Any,e3::Expr)
    Expr(:call,:escape_string,expr(o1),expr(o2),e3)
end
function escape_string(o1::Any,e2::Expr,e3::Expr)
    Expr(:call,:escape_string,expr(o1),e2,e3)
end
function escape_string(e1::Expr,e2::Expr,e3::Expr)
    Expr(:call,:escape_string,e1,e2,e3)
end
function escape_string(e1::Expr)
    Expr(:call,:escape_string,e1)
end
function eta(e1::Expr)
    Expr(:call,:eta,e1)
end
function etree(e1::Expr,o2::Any)
    Expr(:call,:etree,e1,expr(o2))
end
function etree(o1::Any,e2::Expr)
    Expr(:call,:etree,expr(o1),e2)
end
function etree(e1::Expr,e2::Expr)
    Expr(:call,:etree,e1,e2)
end
function etree(e1::Expr)
    Expr(:call,:etree,e1)
end
function evalfile(e1::Expr,o2::Any)
    Expr(:call,:evalfile,e1,expr(o2))
end
function evalfile(o1::Any,e2::Expr)
    Expr(:call,:evalfile,expr(o1),e2)
end
function evalfile(e1::Expr,e2::Expr)
    Expr(:call,:evalfile,e1,e2)
end
function evalfile(e1::Expr)
    Expr(:call,:evalfile,e1)
end
function exp(e1::Expr)
    Expr(:call,:exp,e1)
end
function exp10(e1::Expr)
    Expr(:call,:exp10,e1)
end
function exp2(e1::Expr)
    Expr(:call,:exp2,e1)
end
function expanduser(e1::Expr)
    Expr(:call,:expanduser,e1)
end
function expm(e1::Expr)
    Expr(:call,:expm,e1)
end
function expm1(e1::Expr)
    Expr(:call,:expm1,e1)
end
function exponent(e1::Expr)
    Expr(:call,:exponent,e1)
end
function extrema(e1::Expr,o2::Any)
    Expr(:call,:extrema,e1,expr(o2))
end
function extrema(e1::Expr,e2::Expr)
    Expr(:call,:extrema,e1,e2)
end
function eye(e1::Expr,o2::Any)
    Expr(:call,:eye,e1,expr(o2))
end
function eye(o1::Any,e2::Expr)
    Expr(:call,:eye,expr(o1),e2)
end
function eye(e1::Expr,e2::Expr)
    Expr(:call,:eye,e1,e2)
end
function eye(e1::Expr,o2::Any,o3::Any)
    Expr(:call,:eye,e1,expr(o2),expr(o3))
end
function eye(o1::Any,e2::Expr,o3::Any)
    Expr(:call,:eye,expr(o1),e2,expr(o3))
end
function eye(e1::Expr,e2::Expr,o3::Any)
    Expr(:call,:eye,e1,e2,expr(o3))
end
function eye(o1::Any,o2::Any,e3::Expr)
    Expr(:call,:eye,expr(o1),expr(o2),e3)
end
function eye(e1::Expr,o2::Any,e3::Expr)
    Expr(:call,:eye,e1,expr(o2),e3)
end
function eye(o1::Any,e2::Expr,e3::Expr)
    Expr(:call,:eye,expr(o1),e2,e3)
end
function eye(e1::Expr,e2::Expr,e3::Expr)
    Expr(:call,:eye,e1,e2,e3)
end
function eye(e1::Expr)
    Expr(:call,:eye,e1)
end
function factorize(e1::Expr)
    Expr(:call,:factorize,e1)
end
function falses(e1::Expr)
    Expr(:call,:falses,e1)
end
function fd(e1::Expr)
    Expr(:call,:fd,e1)
end
function fdio(e1::Expr,o2::Any)
    Expr(:call,:fdio,e1,expr(o2))
end
function fdio(o1::Any,e2::Expr)
    Expr(:call,:fdio,expr(o1),e2)
end
function fdio(e1::Expr,e2::Expr)
    Expr(:call,:fdio,e1,e2)
end
function fdio(e1::Expr,o2::Any,o3::Any)
    Expr(:call,:fdio,e1,expr(o2),expr(o3))
end
function fdio(o1::Any,e2::Expr,o3::Any)
    Expr(:call,:fdio,expr(o1),e2,expr(o3))
end
function fdio(e1::Expr,e2::Expr,o3::Any)
    Expr(:call,:fdio,e1,e2,expr(o3))
end
function fdio(o1::Any,o2::Any,e3::Expr)
    Expr(:call,:fdio,expr(o1),expr(o2),e3)
end
function fdio(e1::Expr,o2::Any,e3::Expr)
    Expr(:call,:fdio,e1,expr(o2),e3)
end
function fdio(o1::Any,e2::Expr,e3::Expr)
    Expr(:call,:fdio,expr(o1),e2,e3)
end
function fdio(e1::Expr,e2::Expr,e3::Expr)
    Expr(:call,:fdio,e1,e2,e3)
end
function fdio(e1::Expr)
    Expr(:call,:fdio,e1)
end
function fetch(e1::Expr,o2::Any)
    Expr(:call,:fetch,e1,expr(o2))
end
function fetch(o1::Any,e2::Expr)
    Expr(:call,:fetch,expr(o1),e2)
end
function fetch(e1::Expr,e2::Expr)
    Expr(:call,:fetch,e1,e2)
end
function fft(e1::Expr,o2::Any)
    Expr(:call,:fft,e1,expr(o2))
end
function fft(e1::Expr,e2::Expr)
    Expr(:call,:fft,e1,e2)
end
function fft(e1::Expr)
    Expr(:call,:fft,e1)
end
function fft!(e1::Expr,o2::Any)
    Expr(:call,:fft!,e1,expr(o2))
end
function fft!(e1::Expr,e2::Expr)
    Expr(:call,:fft!,e1,e2)
end
function fft!(e1::Expr)
    Expr(:call,:fft!,e1)
end
function field_offset(e1::Expr,o2::Any)
    Expr(:call,:field_offset,e1,expr(o2))
end
function field_offset(e1::Expr,e2::Expr)
    Expr(:call,:field_offset,e1,e2)
end
function fieldname(e1::Expr,o2::Any)
    Expr(:call,:fieldname,e1,expr(o2))
end
function fieldname(o1::Any,e2::Expr)
    Expr(:call,:fieldname,expr(o1),e2)
end
function fieldname(e1::Expr,e2::Expr)
    Expr(:call,:fieldname,e1,e2)
end
function fieldoffset(e1::Expr,o2::Any)
    Expr(:call,:fieldoffset,e1,expr(o2))
end
function fieldoffset(o1::Any,e2::Expr)
    Expr(:call,:fieldoffset,expr(o1),e2)
end
function fieldoffset(e1::Expr,e2::Expr)
    Expr(:call,:fieldoffset,e1,e2)
end
function fieldoffsets(e1::Expr)
    Expr(:call,:fieldoffsets,e1)
end
function fill(o1::Any,e2::Expr)
    Expr(:call,:fill,expr(o1),e2)
end
function fill(e1::Expr,e2::Expr)
    Expr(:call,:fill,e1,e2)
end
function fill!(e1::Expr,o2::Any)
    Expr(:call,:fill!,e1,expr(o2))
end
function fill!(e1::Expr,e2::Expr)
    Expr(:call,:fill!,e1,e2)
end
function filt(e1::Expr,o2::Any,o3::Any,o4::Any)
    Expr(:call,:filt,e1,expr(o2),expr(o3),expr(o4))
end
function filt(o1::Any,e2::Expr,o3::Any,o4::Any)
    Expr(:call,:filt,expr(o1),e2,expr(o3),expr(o4))
end
function filt(e1::Expr,e2::Expr,o3::Any,o4::Any)
    Expr(:call,:filt,e1,e2,expr(o3),expr(o4))
end
function filt(o1::Any,o2::Any,e3::Expr,o4::Any)
    Expr(:call,:filt,expr(o1),expr(o2),e3,expr(o4))
end
function filt(e1::Expr,o2::Any,e3::Expr,o4::Any)
    Expr(:call,:filt,e1,expr(o2),e3,expr(o4))
end
function filt(o1::Any,e2::Expr,e3::Expr,o4::Any)
    Expr(:call,:filt,expr(o1),e2,e3,expr(o4))
end
function filt(e1::Expr,e2::Expr,e3::Expr,o4::Any)
    Expr(:call,:filt,e1,e2,e3,expr(o4))
end
function filt(o1::Any,o2::Any,o3::Any,e4::Expr)
    Expr(:call,:filt,expr(o1),expr(o2),expr(o3),e4)
end
function filt(e1::Expr,o2::Any,o3::Any,e4::Expr)
    Expr(:call,:filt,e1,expr(o2),expr(o3),e4)
end
function filt(o1::Any,e2::Expr,o3::Any,e4::Expr)
    Expr(:call,:filt,expr(o1),e2,expr(o3),e4)
end
function filt(e1::Expr,e2::Expr,o3::Any,e4::Expr)
    Expr(:call,:filt,e1,e2,expr(o3),e4)
end
function filt(o1::Any,o2::Any,e3::Expr,e4::Expr)
    Expr(:call,:filt,expr(o1),expr(o2),e3,e4)
end
function filt(e1::Expr,o2::Any,e3::Expr,e4::Expr)
    Expr(:call,:filt,e1,expr(o2),e3,e4)
end
function filt(o1::Any,e2::Expr,e3::Expr,e4::Expr)
    Expr(:call,:filt,expr(o1),e2,e3,e4)
end
function filt(e1::Expr,e2::Expr,e3::Expr,e4::Expr)
    Expr(:call,:filt,e1,e2,e3,e4)
end
function filt(e1::Expr,o2::Any,o3::Any)
    Expr(:call,:filt,e1,expr(o2),expr(o3))
end
function filt(o1::Any,e2::Expr,o3::Any)
    Expr(:call,:filt,expr(o1),e2,expr(o3))
end
function filt(e1::Expr,e2::Expr,o3::Any)
    Expr(:call,:filt,e1,e2,expr(o3))
end
function filt(o1::Any,o2::Any,e3::Expr)
    Expr(:call,:filt,expr(o1),expr(o2),e3)
end
function filt(e1::Expr,o2::Any,e3::Expr)
    Expr(:call,:filt,e1,expr(o2),e3)
end
function filt(o1::Any,e2::Expr,e3::Expr)
    Expr(:call,:filt,expr(o1),e2,e3)
end
function filt(e1::Expr,e2::Expr,e3::Expr)
    Expr(:call,:filt,e1,e2,e3)
end
function filt!(e1::Expr,o2::Any,o3::Any,o4::Any)
    Expr(:call,:filt!,e1,expr(o2),expr(o3),expr(o4))
end
function filt!(o1::Any,e2::Expr,o3::Any,o4::Any)
    Expr(:call,:filt!,expr(o1),e2,expr(o3),expr(o4))
end
function filt!(e1::Expr,e2::Expr,o3::Any,o4::Any)
    Expr(:call,:filt!,e1,e2,expr(o3),expr(o4))
end
function filt!(o1::Any,o2::Any,e3::Expr,o4::Any)
    Expr(:call,:filt!,expr(o1),expr(o2),e3,expr(o4))
end
function filt!(e1::Expr,o2::Any,e3::Expr,o4::Any)
    Expr(:call,:filt!,e1,expr(o2),e3,expr(o4))
end
function filt!(o1::Any,e2::Expr,e3::Expr,o4::Any)
    Expr(:call,:filt!,expr(o1),e2,e3,expr(o4))
end
function filt!(e1::Expr,e2::Expr,e3::Expr,o4::Any)
    Expr(:call,:filt!,e1,e2,e3,expr(o4))
end
function filt!(o1::Any,o2::Any,o3::Any,e4::Expr)
    Expr(:call,:filt!,expr(o1),expr(o2),expr(o3),e4)
end
function filt!(e1::Expr,o2::Any,o3::Any,e4::Expr)
    Expr(:call,:filt!,e1,expr(o2),expr(o3),e4)
end
function filt!(o1::Any,e2::Expr,o3::Any,e4::Expr)
    Expr(:call,:filt!,expr(o1),e2,expr(o3),e4)
end
function filt!(e1::Expr,e2::Expr,o3::Any,e4::Expr)
    Expr(:call,:filt!,e1,e2,expr(o3),e4)
end
function filt!(o1::Any,o2::Any,e3::Expr,e4::Expr)
    Expr(:call,:filt!,expr(o1),expr(o2),e3,e4)
end
function filt!(e1::Expr,o2::Any,e3::Expr,e4::Expr)
    Expr(:call,:filt!,e1,expr(o2),e3,e4)
end
function filt!(o1::Any,e2::Expr,e3::Expr,e4::Expr)
    Expr(:call,:filt!,expr(o1),e2,e3,e4)
end
function filt!(e1::Expr,e2::Expr,e3::Expr,e4::Expr)
    Expr(:call,:filt!,e1,e2,e3,e4)
end
function filt!(e1::Expr,o2::Any,o3::Any,o4::Any,o5::Any)
    Expr(:call,:filt!,e1,expr(o2),expr(o3),expr(o4),expr(o5))
end
function filt!(o1::Any,e2::Expr,o3::Any,o4::Any,o5::Any)
    Expr(:call,:filt!,expr(o1),e2,expr(o3),expr(o4),expr(o5))
end
function filt!(e1::Expr,e2::Expr,o3::Any,o4::Any,o5::Any)
    Expr(:call,:filt!,e1,e2,expr(o3),expr(o4),expr(o5))
end
function filt!(o1::Any,o2::Any,e3::Expr,o4::Any,o5::Any)
    Expr(:call,:filt!,expr(o1),expr(o2),e3,expr(o4),expr(o5))
end
function filt!(e1::Expr,o2::Any,e3::Expr,o4::Any,o5::Any)
    Expr(:call,:filt!,e1,expr(o2),e3,expr(o4),expr(o5))
end
function filt!(o1::Any,e2::Expr,e3::Expr,o4::Any,o5::Any)
    Expr(:call,:filt!,expr(o1),e2,e3,expr(o4),expr(o5))
end
function filt!(e1::Expr,e2::Expr,e3::Expr,o4::Any,o5::Any)
    Expr(:call,:filt!,e1,e2,e3,expr(o4),expr(o5))
end
function filt!(o1::Any,o2::Any,o3::Any,e4::Expr,o5::Any)
    Expr(:call,:filt!,expr(o1),expr(o2),expr(o3),e4,expr(o5))
end
function filt!(e1::Expr,o2::Any,o3::Any,e4::Expr,o5::Any)
    Expr(:call,:filt!,e1,expr(o2),expr(o3),e4,expr(o5))
end
function filt!(o1::Any,e2::Expr,o3::Any,e4::Expr,o5::Any)
    Expr(:call,:filt!,expr(o1),e2,expr(o3),e4,expr(o5))
end
function filt!(e1::Expr,e2::Expr,o3::Any,e4::Expr,o5::Any)
    Expr(:call,:filt!,e1,e2,expr(o3),e4,expr(o5))
end
function filt!(o1::Any,o2::Any,e3::Expr,e4::Expr,o5::Any)
    Expr(:call,:filt!,expr(o1),expr(o2),e3,e4,expr(o5))
end
function filt!(e1::Expr,o2::Any,e3::Expr,e4::Expr,o5::Any)
    Expr(:call,:filt!,e1,expr(o2),e3,e4,expr(o5))
end
function filt!(o1::Any,e2::Expr,e3::Expr,e4::Expr,o5::Any)
    Expr(:call,:filt!,expr(o1),e2,e3,e4,expr(o5))
end
function filt!(e1::Expr,e2::Expr,e3::Expr,e4::Expr,o5::Any)
    Expr(:call,:filt!,e1,e2,e3,e4,expr(o5))
end
function filt!(o1::Any,o2::Any,o3::Any,o4::Any,e5::Expr)
    Expr(:call,:filt!,expr(o1),expr(o2),expr(o3),expr(o4),e5)
end
function filt!(e1::Expr,o2::Any,o3::Any,o4::Any,e5::Expr)
    Expr(:call,:filt!,e1,expr(o2),expr(o3),expr(o4),e5)
end
function filt!(o1::Any,e2::Expr,o3::Any,o4::Any,e5::Expr)
    Expr(:call,:filt!,expr(o1),e2,expr(o3),expr(o4),e5)
end
function filt!(e1::Expr,e2::Expr,o3::Any,o4::Any,e5::Expr)
    Expr(:call,:filt!,e1,e2,expr(o3),expr(o4),e5)
end
function filt!(o1::Any,o2::Any,e3::Expr,o4::Any,e5::Expr)
    Expr(:call,:filt!,expr(o1),expr(o2),e3,expr(o4),e5)
end
function filt!(e1::Expr,o2::Any,e3::Expr,o4::Any,e5::Expr)
    Expr(:call,:filt!,e1,expr(o2),e3,expr(o4),e5)
end
function filt!(o1::Any,e2::Expr,e3::Expr,o4::Any,e5::Expr)
    Expr(:call,:filt!,expr(o1),e2,e3,expr(o4),e5)
end
function filt!(e1::Expr,e2::Expr,e3::Expr,o4::Any,e5::Expr)
    Expr(:call,:filt!,e1,e2,e3,expr(o4),e5)
end
function filt!(o1::Any,o2::Any,o3::Any,e4::Expr,e5::Expr)
    Expr(:call,:filt!,expr(o1),expr(o2),expr(o3),e4,e5)
end
function filt!(e1::Expr,o2::Any,o3::Any,e4::Expr,e5::Expr)
    Expr(:call,:filt!,e1,expr(o2),expr(o3),e4,e5)
end
function filt!(o1::Any,e2::Expr,o3::Any,e4::Expr,e5::Expr)
    Expr(:call,:filt!,expr(o1),e2,expr(o3),e4,e5)
end
function filt!(e1::Expr,e2::Expr,o3::Any,e4::Expr,e5::Expr)
    Expr(:call,:filt!,e1,e2,expr(o3),e4,e5)
end
function filt!(o1::Any,o2::Any,e3::Expr,e4::Expr,e5::Expr)
    Expr(:call,:filt!,expr(o1),expr(o2),e3,e4,e5)
end
function filt!(e1::Expr,o2::Any,e3::Expr,e4::Expr,e5::Expr)
    Expr(:call,:filt!,e1,expr(o2),e3,e4,e5)
end
function filt!(o1::Any,e2::Expr,e3::Expr,e4::Expr,e5::Expr)
    Expr(:call,:filt!,expr(o1),e2,e3,e4,e5)
end
function filt!(e1::Expr,e2::Expr,e3::Expr,e4::Expr,e5::Expr)
    Expr(:call,:filt!,e1,e2,e3,e4,e5)
end
function filter!(o1::Any,e2::Expr)
    Expr(:call,:filter!,expr(o1),e2)
end
function filter!(e1::Expr,e2::Expr)
    Expr(:call,:filter!,e1,e2)
end
function find(e1::Expr,o2::Any)
    Expr(:call,:find,e1,expr(o2))
end
function find(e1::Expr,e2::Expr)
    Expr(:call,:find,e1,e2)
end
function findmax(e1::Expr,o2::Any)
    Expr(:call,:findmax,e1,expr(o2))
end
function findmax(e1::Expr,e2::Expr)
    Expr(:call,:findmax,e1,e2)
end
function findmax!(e1::Expr,o2::Any,o3::Any)
    Expr(:call,:findmax!,e1,expr(o2),expr(o3))
end
function findmax!(o1::Any,e2::Expr,o3::Any)
    Expr(:call,:findmax!,expr(o1),e2,expr(o3))
end
function findmax!(e1::Expr,e2::Expr,o3::Any)
    Expr(:call,:findmax!,e1,e2,expr(o3))
end
function findmax!(o1::Any,o2::Any,e3::Expr)
    Expr(:call,:findmax!,expr(o1),expr(o2),e3)
end
function findmax!(e1::Expr,o2::Any,e3::Expr)
    Expr(:call,:findmax!,e1,expr(o2),e3)
end
function findmax!(o1::Any,e2::Expr,e3::Expr)
    Expr(:call,:findmax!,expr(o1),e2,e3)
end
function findmax!(e1::Expr,e2::Expr,e3::Expr)
    Expr(:call,:findmax!,e1,e2,e3)
end
function findmin(e1::Expr,o2::Any)
    Expr(:call,:findmin,e1,expr(o2))
end
function findmin(e1::Expr,e2::Expr)
    Expr(:call,:findmin,e1,e2)
end
function findmin!(e1::Expr,o2::Any,o3::Any)
    Expr(:call,:findmin!,e1,expr(o2),expr(o3))
end
function findmin!(o1::Any,e2::Expr,o3::Any)
    Expr(:call,:findmin!,expr(o1),e2,expr(o3))
end
function findmin!(e1::Expr,e2::Expr,o3::Any)
    Expr(:call,:findmin!,e1,e2,expr(o3))
end
function findmin!(o1::Any,o2::Any,e3::Expr)
    Expr(:call,:findmin!,expr(o1),expr(o2),e3)
end
function findmin!(e1::Expr,o2::Any,e3::Expr)
    Expr(:call,:findmin!,e1,expr(o2),e3)
end
function findmin!(o1::Any,e2::Expr,e3::Expr)
    Expr(:call,:findmin!,expr(o1),e2,e3)
end
function findmin!(e1::Expr,e2::Expr,e3::Expr)
    Expr(:call,:findmin!,e1,e2,e3)
end
function findn(e1::Expr)
    Expr(:call,:findn,e1)
end
function findnext(o1::Any,e2::Expr)
    Expr(:call,:findnext,expr(o1),e2)
end
function findnext(e1::Expr,e2::Expr)
    Expr(:call,:findnext,e1,e2)
end
function findnext(o1::Any,o2::Any,e3::Expr)
    Expr(:call,:findnext,expr(o1),expr(o2),e3)
end
function findnext(o1::Any,e2::Expr,e3::Expr)
    Expr(:call,:findnext,expr(o1),e2,e3)
end
function findnext(e1::Expr,o2::Any,e3::Expr)
    Expr(:call,:findnext,e1,expr(o2),e3)
end
function findnext(e1::Expr,e2::Expr,e3::Expr)
    Expr(:call,:findnext,e1,e2,e3)
end
function findnz(e1::Expr)
    Expr(:call,:findnz,e1)
end
function findprev(o1::Any,e2::Expr)
    Expr(:call,:findprev,expr(o1),e2)
end
function findprev(e1::Expr,e2::Expr)
    Expr(:call,:findprev,e1,e2)
end
function findprev(o1::Any,o2::Any,e3::Expr)
    Expr(:call,:findprev,expr(o1),expr(o2),e3)
end
function findprev(o1::Any,e2::Expr,e3::Expr)
    Expr(:call,:findprev,expr(o1),e2,e3)
end
function findprev(e1::Expr,o2::Any,e3::Expr)
    Expr(:call,:findprev,e1,expr(o2),e3)
end
function findprev(e1::Expr,e2::Expr,e3::Expr)
    Expr(:call,:findprev,e1,e2,e3)
end
function fld(e1::Expr,o2::Any)
    Expr(:call,:fld,e1,expr(o2))
end
function fld(o1::Any,e2::Expr)
    Expr(:call,:fld,expr(o1),e2)
end
function fld(e1::Expr,e2::Expr)
    Expr(:call,:fld,e1,e2)
end
function fld1(e1::Expr,o2::Any)
    Expr(:call,:fld1,e1,expr(o2))
end
function fld1(o1::Any,e2::Expr)
    Expr(:call,:fld1,expr(o1),e2)
end
function fld1(e1::Expr,e2::Expr)
    Expr(:call,:fld1,e1,e2)
end
function fldmod1(e1::Expr,o2::Any)
    Expr(:call,:fldmod1,e1,expr(o2))
end
function fldmod1(o1::Any,e2::Expr)
    Expr(:call,:fldmod1,expr(o1),e2)
end
function fldmod1(e1::Expr,e2::Expr)
    Expr(:call,:fldmod1,e1,e2)
end
function flipbits!(e1::Expr)
    Expr(:call,:flipbits!,e1)
end
function flipdim(e1::Expr,o2::Any)
    Expr(:call,:flipdim,e1,expr(o2))
end
function flipdim(o1::Any,e2::Expr)
    Expr(:call,:flipdim,expr(o1),e2)
end
function flipdim(e1::Expr,e2::Expr)
    Expr(:call,:flipdim,e1,e2)
end
function flipsign(e1::Expr,o2::Any)
    Expr(:call,:flipsign,e1,expr(o2))
end
function flipsign(o1::Any,e2::Expr)
    Expr(:call,:flipsign,expr(o1),e2)
end
function flipsign(e1::Expr,e2::Expr)
    Expr(:call,:flipsign,e1,e2)
end
function floor(e1::Expr,o2::Any)
    Expr(:call,:floor,e1,expr(o2))
end
function floor(o1::Any,e2::Expr)
    Expr(:call,:floor,expr(o1),e2)
end
function floor(e1::Expr,e2::Expr)
    Expr(:call,:floor,e1,e2)
end
function floor(e1::Expr,o2::Any,o3::Any)
    Expr(:call,:floor,e1,expr(o2),expr(o3))
end
function floor(o1::Any,e2::Expr,o3::Any)
    Expr(:call,:floor,expr(o1),e2,expr(o3))
end
function floor(e1::Expr,e2::Expr,o3::Any)
    Expr(:call,:floor,e1,e2,expr(o3))
end
function floor(o1::Any,o2::Any,e3::Expr)
    Expr(:call,:floor,expr(o1),expr(o2),e3)
end
function floor(e1::Expr,o2::Any,e3::Expr)
    Expr(:call,:floor,e1,expr(o2),e3)
end
function floor(o1::Any,e2::Expr,e3::Expr)
    Expr(:call,:floor,expr(o1),e2,e3)
end
function floor(e1::Expr,e2::Expr,e3::Expr)
    Expr(:call,:floor,e1,e2,e3)
end
function floor(e1::Expr)
    Expr(:call,:floor,e1)
end
function flush(e1::Expr)
    Expr(:call,:flush,e1)
end
function fma(e1::Expr,o2::Any,o3::Any)
    Expr(:call,:fma,e1,expr(o2),expr(o3))
end
function fma(o1::Any,e2::Expr,o3::Any)
    Expr(:call,:fma,expr(o1),e2,expr(o3))
end
function fma(e1::Expr,e2::Expr,o3::Any)
    Expr(:call,:fma,e1,e2,expr(o3))
end
function fma(o1::Any,o2::Any,e3::Expr)
    Expr(:call,:fma,expr(o1),expr(o2),e3)
end
function fma(e1::Expr,o2::Any,e3::Expr)
    Expr(:call,:fma,e1,expr(o2),e3)
end
function fma(o1::Any,e2::Expr,e3::Expr)
    Expr(:call,:fma,expr(o1),e2,e3)
end
function fma(e1::Expr,e2::Expr,e3::Expr)
    Expr(:call,:fma,e1,e2,e3)
end
function frexp(e1::Expr)
    Expr(:call,:frexp,e1)
end
function full(e1::Expr)
    Expr(:call,:full,e1)
end
function fullname(e1::Expr)
    Expr(:call,:fullname,e1)
end
function gamma(e1::Expr)
    Expr(:call,:gamma,e1)
end
function gc(e1::Expr)
    Expr(:call,:gc,e1)
end
function gc_enable(e1::Expr)
    Expr(:call,:gc_enable,e1)
end
function gcd(e1::Expr,o2::Any)
    Expr(:call,:gcd,e1,expr(o2))
end
function gcd(o1::Any,e2::Expr)
    Expr(:call,:gcd,expr(o1),e2)
end
function gcd(e1::Expr,e2::Expr)
    Expr(:call,:gcd,e1,e2)
end
function gcd(e1::Expr)
    Expr(:call,:gcd,e1)
end
function gcdx(e1::Expr,o2::Any)
    Expr(:call,:gcdx,e1,expr(o2))
end
function gcdx(o1::Any,e2::Expr)
    Expr(:call,:gcdx,expr(o1),e2)
end
function gcdx(e1::Expr,e2::Expr)
    Expr(:call,:gcdx,e1,e2)
end
function gensym(e1::Expr)
    Expr(:call,:gensym,e1)
end
function get(e1::Expr,o2::Any)
    Expr(:call,:get,e1,expr(o2))
end
function get(e1::Expr,e2::Expr)
    Expr(:call,:get,e1,e2)
end
function get(e1::Expr,o2::Any,o3::Any)
    Expr(:call,:get,e1,expr(o2),expr(o3))
end
function get(e1::Expr,e2::Expr,o3::Any)
    Expr(:call,:get,e1,e2,expr(o3))
end
function get(e1::Expr,o2::Any,e3::Expr)
    Expr(:call,:get,e1,expr(o2),e3)
end
function get(e1::Expr,e2::Expr,e3::Expr)
    Expr(:call,:get,e1,e2,e3)
end
function get(e1::Expr)
    Expr(:call,:get,e1)
end
function get!(e1::Expr,o2::Any,o3::Any,o4::Any)
    Expr(:call,:get!,e1,expr(o2),expr(o3),expr(o4))
end
function get!(o1::Any,e2::Expr,o3::Any,o4::Any)
    Expr(:call,:get!,expr(o1),e2,expr(o3),expr(o4))
end
function get!(e1::Expr,e2::Expr,o3::Any,o4::Any)
    Expr(:call,:get!,e1,e2,expr(o3),expr(o4))
end
function get!(o1::Any,o2::Any,e3::Expr,o4::Any)
    Expr(:call,:get!,expr(o1),expr(o2),e3,expr(o4))
end
function get!(e1::Expr,o2::Any,e3::Expr,o4::Any)
    Expr(:call,:get!,e1,expr(o2),e3,expr(o4))
end
function get!(o1::Any,e2::Expr,e3::Expr,o4::Any)
    Expr(:call,:get!,expr(o1),e2,e3,expr(o4))
end
function get!(e1::Expr,e2::Expr,e3::Expr,o4::Any)
    Expr(:call,:get!,e1,e2,e3,expr(o4))
end
function get!(e1::Expr,e2::Expr,e3::Expr,e4::Expr)
    Expr(:call,:get!,e1,e2,e3,e4)
end
function get!(e1::Expr,o2::Any)
    Expr(:call,:get!,e1,expr(o2))
end
function get!(o1::Any,e2::Expr)
    Expr(:call,:get!,expr(o1),e2)
end
function get!(e1::Expr,e2::Expr)
    Expr(:call,:get!,e1,e2)
end
function get!(e1::Expr,o2::Any,o3::Any)
    Expr(:call,:get!,e1,expr(o2),expr(o3))
end
function get!(e1::Expr,e2::Expr,o3::Any)
    Expr(:call,:get!,e1,e2,expr(o3))
end
function get!(e1::Expr,o2::Any,e3::Expr)
    Expr(:call,:get!,e1,expr(o2),e3)
end
function get!(e1::Expr,e2::Expr,e3::Expr)
    Expr(:call,:get!,e1,e2,e3)
end
function getaddrinfo(e1::Expr,o2::Any)
    Expr(:call,:getaddrinfo,e1,expr(o2))
end
function getaddrinfo(o1::Any,e2::Expr)
    Expr(:call,:getaddrinfo,expr(o1),e2)
end
function getaddrinfo(e1::Expr,e2::Expr)
    Expr(:call,:getaddrinfo,e1,e2)
end
function getaddrinfo(e1::Expr)
    Expr(:call,:getaddrinfo,e1)
end
function getindex(e1::Expr,o2::Any,o3::Any,o4::Any)
    Expr(:call,:getindex,e1,expr(o2),expr(o3),expr(o4))
end
function getindex(e1::Expr,o2::Any,o3::Any,e4::Expr)
    Expr(:call,:getindex,e1,expr(o2),expr(o3),e4)
end
function getindex(e1::Expr,e2::Expr,o3::Any,o4::Any)
    Expr(:call,:getindex,e1,e2,expr(o3),expr(o4))
end
function getindex(e1::Expr,e2::Expr,o3::Any,e4::Expr)
    Expr(:call,:getindex,e1,e2,expr(o3),e4)
end
function getindex(e1::Expr,o2::Any,e3::Expr,o4::Any)
    Expr(:call,:getindex,e1,expr(o2),e3,expr(o4))
end
function getindex(e1::Expr,o2::Any,e3::Expr,e4::Expr)
    Expr(:call,:getindex,e1,expr(o2),e3,e4)
end
function getindex(e1::Expr,e2::Expr,e3::Expr,o4::Any)
    Expr(:call,:getindex,e1,e2,e3,expr(o4))
end
function getindex(e1::Expr,e2::Expr,e3::Expr,e4::Expr)
    Expr(:call,:getindex,e1,e2,e3,e4)
end
function getindex(e1::Expr,o2::Any)
    Expr(:call,:getindex,e1,expr(o2))
end
function getindex(e1::Expr,e2::Expr)
    Expr(:call,:getindex,e1,e2)
end
function getindex(e1::Expr,o2::Any,o3::Any)
    Expr(:call,:getindex,e1,expr(o2),expr(o3))
end
function getindex(e1::Expr,e2::Expr,o3::Any)
    Expr(:call,:getindex,e1,e2,expr(o3))
end
function getindex(e1::Expr,o2::Any,e3::Expr)
    Expr(:call,:getindex,e1,expr(o2),e3)
end
function getindex(e1::Expr,e2::Expr,e3::Expr)
    Expr(:call,:getindex,e1,e2,e3)
end
function getindex(e1::Expr)
    Expr(:call,:getindex,e1)
end
function getkey(e1::Expr,o2::Any)
    Expr(:call,:getkey,e1,expr(o2))
end
function getkey(o1::Any,e2::Expr)
    Expr(:call,:getkey,expr(o1),e2)
end
function getkey(e1::Expr,e2::Expr)
    Expr(:call,:getkey,e1,e2)
end
function getkey(e1::Expr,o2::Any,o3::Any)
    Expr(:call,:getkey,e1,expr(o2),expr(o3))
end
function getkey(e1::Expr,e2::Expr,o3::Any)
    Expr(:call,:getkey,e1,e2,expr(o3))
end
function getkey(e1::Expr,o2::Any,e3::Expr)
    Expr(:call,:getkey,e1,expr(o2),e3)
end
function getkey(e1::Expr,e2::Expr,e3::Expr)
    Expr(:call,:getkey,e1,e2,e3)
end
function getsockname(e1::Expr)
    Expr(:call,:getsockname,e1)
end
function givens(o1::Any,o2::Any,e3::Expr,o4::Any)
    Expr(:call,:givens,expr(o1),expr(o2),e3,expr(o4))
end
function givens(o1::Any,o2::Any,o3::Any,e4::Expr)
    Expr(:call,:givens,expr(o1),expr(o2),expr(o3),e4)
end
function givens(o1::Any,o2::Any,e3::Expr,e4::Expr)
    Expr(:call,:givens,expr(o1),expr(o2),e3,e4)
end
function givens(o1::Any,e2::Expr,e3::Expr,e4::Expr)
    Expr(:call,:givens,expr(o1),e2,e3,e4)
end
function givens(e1::Expr,o2::Any,e3::Expr,e4::Expr)
    Expr(:call,:givens,e1,expr(o2),e3,e4)
end
function givens(e1::Expr,e2::Expr,e3::Expr,e4::Expr)
    Expr(:call,:givens,e1,e2,e3,e4)
end
function givens(e1::Expr,o2::Any,o3::Any)
    Expr(:call,:givens,e1,expr(o2),expr(o3))
end
function givens(o1::Any,e2::Expr,o3::Any)
    Expr(:call,:givens,expr(o1),e2,expr(o3))
end
function givens(e1::Expr,e2::Expr,o3::Any)
    Expr(:call,:givens,e1,e2,expr(o3))
end
function givens(o1::Any,o2::Any,e3::Expr)
    Expr(:call,:givens,expr(o1),expr(o2),e3)
end
function givens(e1::Expr,o2::Any,e3::Expr)
    Expr(:call,:givens,e1,expr(o2),e3)
end
function givens(o1::Any,e2::Expr,e3::Expr)
    Expr(:call,:givens,expr(o1),e2,e3)
end
function givens(e1::Expr,e2::Expr,e3::Expr)
    Expr(:call,:givens,e1,e2,e3)
end
function gradient(e1::Expr,o2::Any)
    Expr(:call,:gradient,e1,expr(o2))
end
function gradient(o1::Any,e2::Expr)
    Expr(:call,:gradient,expr(o1),e2)
end
function gradient(e1::Expr,e2::Expr)
    Expr(:call,:gradient,e1,e2)
end
function gradient(e1::Expr)
    Expr(:call,:gradient,e1)
end
function graphemes(e1::Expr)
    Expr(:call,:graphemes,e1)
end
function hash(o1::Any,e2::Expr)
    Expr(:call,:hash,expr(o1),e2)
end
function hash(e1::Expr,e2::Expr)
    Expr(:call,:hash,e1,e2)
end
function haskey(e1::Expr,o2::Any)
    Expr(:call,:haskey,e1,expr(o2))
end
function haskey(e1::Expr,e2::Expr)
    Expr(:call,:haskey,e1,e2)
end
function hessfact(e1::Expr)
    Expr(:call,:hessfact,e1)
end
function hessfact!(e1::Expr)
    Expr(:call,:hessfact!,e1)
end
function hex(e1::Expr,o2::Any)
    Expr(:call,:hex,e1,expr(o2))
end
function hex(o1::Any,e2::Expr)
    Expr(:call,:hex,expr(o1),e2)
end
function hex(e1::Expr,e2::Expr)
    Expr(:call,:hex,e1,e2)
end
function hex(e1::Expr,o2::Any,o3::Any)
    Expr(:call,:hex,e1,expr(o2),expr(o3))
end
function hex(o1::Any,e2::Expr,o3::Any)
    Expr(:call,:hex,expr(o1),e2,expr(o3))
end
function hex(e1::Expr,e2::Expr,o3::Any)
    Expr(:call,:hex,e1,e2,expr(o3))
end
function hex(o1::Any,o2::Any,e3::Expr)
    Expr(:call,:hex,expr(o1),expr(o2),e3)
end
function hex(e1::Expr,o2::Any,e3::Expr)
    Expr(:call,:hex,e1,expr(o2),e3)
end
function hex(o1::Any,e2::Expr,e3::Expr)
    Expr(:call,:hex,expr(o1),e2,e3)
end
function hex(e1::Expr,e2::Expr,e3::Expr)
    Expr(:call,:hex,e1,e2,e3)
end
function hex(e1::Expr)
    Expr(:call,:hex,e1)
end
function hex2bytes(e1::Expr)
    Expr(:call,:hex2bytes,e1)
end
function hex2num(e1::Expr)
    Expr(:call,:hex2num,e1)
end
function hist(e1::Expr,o2::Any)
    Expr(:call,:hist,e1,expr(o2))
end
function hist(o1::Any,e2::Expr)
    Expr(:call,:hist,expr(o1),e2)
end
function hist(e1::Expr,e2::Expr)
    Expr(:call,:hist,e1,e2)
end
function hist(e1::Expr)
    Expr(:call,:hist,e1)
end
function hist!(e1::Expr,o2::Any,o3::Any)
    Expr(:call,:hist!,e1,expr(o2),expr(o3))
end
function hist!(o1::Any,e2::Expr,o3::Any)
    Expr(:call,:hist!,expr(o1),e2,expr(o3))
end
function hist!(e1::Expr,e2::Expr,o3::Any)
    Expr(:call,:hist!,e1,e2,expr(o3))
end
function hist!(o1::Any,o2::Any,e3::Expr)
    Expr(:call,:hist!,expr(o1),expr(o2),e3)
end
function hist!(e1::Expr,o2::Any,e3::Expr)
    Expr(:call,:hist!,e1,expr(o2),e3)
end
function hist!(o1::Any,e2::Expr,e3::Expr)
    Expr(:call,:hist!,expr(o1),e2,e3)
end
function hist!(e1::Expr,e2::Expr,e3::Expr)
    Expr(:call,:hist!,e1,e2,e3)
end
function hist2d(e1::Expr,o2::Any)
    Expr(:call,:hist2d,e1,expr(o2))
end
function hist2d(o1::Any,e2::Expr)
    Expr(:call,:hist2d,expr(o1),e2)
end
function hist2d(e1::Expr,e2::Expr)
    Expr(:call,:hist2d,e1,e2)
end
function hist2d(e1::Expr,o2::Any,o3::Any)
    Expr(:call,:hist2d,e1,expr(o2),expr(o3))
end
function hist2d(o1::Any,e2::Expr,o3::Any)
    Expr(:call,:hist2d,expr(o1),e2,expr(o3))
end
function hist2d(e1::Expr,e2::Expr,o3::Any)
    Expr(:call,:hist2d,e1,e2,expr(o3))
end
function hist2d(o1::Any,o2::Any,e3::Expr)
    Expr(:call,:hist2d,expr(o1),expr(o2),e3)
end
function hist2d(e1::Expr,o2::Any,e3::Expr)
    Expr(:call,:hist2d,e1,expr(o2),e3)
end
function hist2d(o1::Any,e2::Expr,e3::Expr)
    Expr(:call,:hist2d,expr(o1),e2,e3)
end
function hist2d(e1::Expr,e2::Expr,e3::Expr)
    Expr(:call,:hist2d,e1,e2,e3)
end
function hist2d(e1::Expr)
    Expr(:call,:hist2d,e1)
end
function hist2d!(e1::Expr,o2::Any,o3::Any,o4::Any)
    Expr(:call,:hist2d!,e1,expr(o2),expr(o3),expr(o4))
end
function hist2d!(o1::Any,e2::Expr,o3::Any,o4::Any)
    Expr(:call,:hist2d!,expr(o1),e2,expr(o3),expr(o4))
end
function hist2d!(e1::Expr,e2::Expr,o3::Any,o4::Any)
    Expr(:call,:hist2d!,e1,e2,expr(o3),expr(o4))
end
function hist2d!(o1::Any,o2::Any,e3::Expr,o4::Any)
    Expr(:call,:hist2d!,expr(o1),expr(o2),e3,expr(o4))
end
function hist2d!(e1::Expr,o2::Any,e3::Expr,o4::Any)
    Expr(:call,:hist2d!,e1,expr(o2),e3,expr(o4))
end
function hist2d!(o1::Any,e2::Expr,e3::Expr,o4::Any)
    Expr(:call,:hist2d!,expr(o1),e2,e3,expr(o4))
end
function hist2d!(e1::Expr,e2::Expr,e3::Expr,o4::Any)
    Expr(:call,:hist2d!,e1,e2,e3,expr(o4))
end
function hist2d!(o1::Any,o2::Any,o3::Any,e4::Expr)
    Expr(:call,:hist2d!,expr(o1),expr(o2),expr(o3),e4)
end
function hist2d!(e1::Expr,o2::Any,o3::Any,e4::Expr)
    Expr(:call,:hist2d!,e1,expr(o2),expr(o3),e4)
end
function hist2d!(o1::Any,e2::Expr,o3::Any,e4::Expr)
    Expr(:call,:hist2d!,expr(o1),e2,expr(o3),e4)
end
function hist2d!(e1::Expr,e2::Expr,o3::Any,e4::Expr)
    Expr(:call,:hist2d!,e1,e2,expr(o3),e4)
end
function hist2d!(o1::Any,o2::Any,e3::Expr,e4::Expr)
    Expr(:call,:hist2d!,expr(o1),expr(o2),e3,e4)
end
function hist2d!(e1::Expr,o2::Any,e3::Expr,e4::Expr)
    Expr(:call,:hist2d!,e1,expr(o2),e3,e4)
end
function hist2d!(o1::Any,e2::Expr,e3::Expr,e4::Expr)
    Expr(:call,:hist2d!,expr(o1),e2,e3,e4)
end
function hist2d!(e1::Expr,e2::Expr,e3::Expr,e4::Expr)
    Expr(:call,:hist2d!,e1,e2,e3,e4)
end
function histrange(e1::Expr,o2::Any)
    Expr(:call,:histrange,e1,expr(o2))
end
function histrange(o1::Any,e2::Expr)
    Expr(:call,:histrange,expr(o1),e2)
end
function histrange(e1::Expr,e2::Expr)
    Expr(:call,:histrange,e1,e2)
end
function hvcat(e1::Expr,o2::Any)
    Expr(:call,:hvcat,e1,expr(o2))
end
function hvcat(o1::Any,e2::Expr)
    Expr(:call,:hvcat,expr(o1),e2)
end
function hvcat(e1::Expr,e2::Expr)
    Expr(:call,:hvcat,e1,e2)
end
function hvcat(e1::Expr)
    Expr(:call,:hvcat,e1)
end
function hypot(e1::Expr,o2::Any)
    Expr(:call,:hypot,e1,expr(o2))
end
function hypot(o1::Any,e2::Expr)
    Expr(:call,:hypot,expr(o1),e2)
end
function hypot(e1::Expr,e2::Expr)
    Expr(:call,:hypot,e1,e2)
end
function hypot(e1::Expr)
    Expr(:call,:hypot,e1)
end
function idct(e1::Expr,o2::Any)
    Expr(:call,:idct,e1,expr(o2))
end
function idct(e1::Expr,e2::Expr)
    Expr(:call,:idct,e1,e2)
end
function idct(e1::Expr)
    Expr(:call,:idct,e1)
end
function idct!(e1::Expr,o2::Any)
    Expr(:call,:idct!,e1,expr(o2))
end
function idct!(e1::Expr,e2::Expr)
    Expr(:call,:idct!,e1,e2)
end
function idct!(e1::Expr)
    Expr(:call,:idct!,e1)
end
function ifelse(e1::Expr,o2::Any,o3::Any)
    Expr(:call,:ifelse,e1,expr(o2),expr(o3))
end
function ifelse(e1::Expr,e2::Expr,o3::Any)
    Expr(:call,:ifelse,e1,e2,expr(o3))
end
function ifelse(e1::Expr,o2::Any,e3::Expr)
    Expr(:call,:ifelse,e1,expr(o2),e3)
end
function ifelse(e1::Expr,e2::Expr,e3::Expr)
    Expr(:call,:ifelse,e1,e2,e3)
end
function ifft(e1::Expr,o2::Any)
    Expr(:call,:ifft,e1,expr(o2))
end
function ifft(e1::Expr,e2::Expr)
    Expr(:call,:ifft,e1,e2)
end
function ifft(e1::Expr)
    Expr(:call,:ifft,e1)
end
function ifft!(e1::Expr,o2::Any)
    Expr(:call,:ifft!,e1,expr(o2))
end
function ifft!(e1::Expr,e2::Expr)
    Expr(:call,:ifft!,e1,e2)
end
function ifft!(e1::Expr)
    Expr(:call,:ifft!,e1)
end
function ignorestatus(e1::Expr)
    Expr(:call,:ignorestatus,e1)
end
function imag(e1::Expr)
    Expr(:call,:imag,e1)
end
function in(e1::Expr,o2::Any,o3::Any)
    Expr(:call,:in,e1,expr(o2),expr(o3))
end
function in(o1::Any,e2::Expr,o3::Any)
    Expr(:call,:in,expr(o1),e2,expr(o3))
end
function in(e1::Expr,e2::Expr,o3::Any)
    Expr(:call,:in,e1,e2,expr(o3))
end
function in(e1::Expr,e2::Expr,e3::Expr)
    Expr(:call,:in,e1,e2,e3)
end
function include_dependency(e1::Expr)
    Expr(:call,:include_dependency,e1)
end
function include_string(e1::Expr,o2::Any)
    Expr(:call,:include_string,e1,expr(o2))
end
function include_string(o1::Any,e2::Expr)
    Expr(:call,:include_string,expr(o1),e2)
end
function include_string(e1::Expr,e2::Expr)
    Expr(:call,:include_string,e1,e2)
end
function include_string(e1::Expr)
    Expr(:call,:include_string,e1)
end
function ind2chr(e1::Expr,o2::Any)
    Expr(:call,:ind2chr,e1,expr(o2))
end
function ind2chr(o1::Any,e2::Expr)
    Expr(:call,:ind2chr,expr(o1),e2)
end
function ind2chr(e1::Expr,e2::Expr)
    Expr(:call,:ind2chr,e1,e2)
end
function ind2sub(e1::Expr,o2::Any)
    Expr(:call,:ind2sub,e1,expr(o2))
end
function ind2sub(e1::Expr,e2::Expr)
    Expr(:call,:ind2sub,e1,e2)
end
function indexin(e1::Expr,o2::Any)
    Expr(:call,:indexin,e1,expr(o2))
end
function indexin(o1::Any,e2::Expr)
    Expr(:call,:indexin,expr(o1),e2)
end
function indexin(e1::Expr,e2::Expr)
    Expr(:call,:indexin,e1,e2)
end
function indexpids(e1::Expr)
    Expr(:call,:indexpids,e1)
end
function indices(e1::Expr,o2::Any)
    Expr(:call,:indices,e1,expr(o2))
end
function indices(e1::Expr,e2::Expr)
    Expr(:call,:indices,e1,e2)
end
function init_worker(e1::Expr,o2::Any)
    Expr(:call,:init_worker,e1,expr(o2))
end
function init_worker(o1::Any,e2::Expr)
    Expr(:call,:init_worker,expr(o1),e2)
end
function init_worker(e1::Expr,e2::Expr)
    Expr(:call,:init_worker,e1,e2)
end
function init_worker(e1::Expr)
    Expr(:call,:init_worker,e1)
end
function insert!(e1::Expr,o2::Any,o3::Any,o4::Any)
    Expr(:call,:insert!,e1,expr(o2),expr(o3),expr(o4))
end
function insert!(o1::Any,o2::Any,o3::Any,e4::Expr)
    Expr(:call,:insert!,expr(o1),expr(o2),expr(o3),e4)
end
function insert!(e1::Expr,o2::Any,o3::Any,e4::Expr)
    Expr(:call,:insert!,e1,expr(o2),expr(o3),e4)
end
function insert!(e1::Expr,e2::Expr,o3::Any,e4::Expr)
    Expr(:call,:insert!,e1,e2,expr(o3),e4)
end
function insert!(e1::Expr,o2::Any,e3::Expr,e4::Expr)
    Expr(:call,:insert!,e1,expr(o2),e3,e4)
end
function insert!(e1::Expr,e2::Expr,e3::Expr,e4::Expr)
    Expr(:call,:insert!,e1,e2,e3,e4)
end
function insert!(e1::Expr,o2::Any)
    Expr(:call,:insert!,e1,expr(o2))
end
function insert!(e1::Expr,e2::Expr)
    Expr(:call,:insert!,e1,e2)
end
function insert!(e1::Expr,o2::Any,o3::Any)
    Expr(:call,:insert!,e1,expr(o2),expr(o3))
end
function insert!(e1::Expr,e2::Expr,o3::Any)
    Expr(:call,:insert!,e1,e2,expr(o3))
end
function insert!(e1::Expr,o2::Any,e3::Expr)
    Expr(:call,:insert!,e1,expr(o2),e3)
end
function insert!(e1::Expr,e2::Expr,e3::Expr)
    Expr(:call,:insert!,e1,e2,e3)
end
function instances(e1::Expr)
    Expr(:call,:instances,e1)
end
function interrupt(e1::Expr)
    Expr(:call,:interrupt,e1)
end
function intersect!(e1::Expr,o2::Any)
    Expr(:call,:intersect!,e1,expr(o2))
end
function intersect!(o1::Any,e2::Expr)
    Expr(:call,:intersect!,expr(o1),e2)
end
function intersect!(e1::Expr,e2::Expr)
    Expr(:call,:intersect!,e1,e2)
end
function inv(e1::Expr)
    Expr(:call,:inv,e1)
end
function invdigamma(e1::Expr)
    Expr(:call,:invdigamma,e1)
end
function invmod(e1::Expr,o2::Any)
    Expr(:call,:invmod,e1,expr(o2))
end
function invmod(o1::Any,e2::Expr)
    Expr(:call,:invmod,expr(o1),e2)
end
function invmod(e1::Expr,e2::Expr)
    Expr(:call,:invmod,e1,e2)
end
function invperm(e1::Expr)
    Expr(:call,:invperm,e1)
end
function ipermute!(o1::Any,e2::Expr)
    Expr(:call,:ipermute!,expr(o1),e2)
end
function ipermute!(e1::Expr,e2::Expr)
    Expr(:call,:ipermute!,e1,e2)
end
function ipermutedims(e1::Expr,o2::Any)
    Expr(:call,:ipermutedims,e1,expr(o2))
end
function ipermutedims(e1::Expr,e2::Expr)
    Expr(:call,:ipermutedims,e1,e2)
end
function irfft(e1::Expr,o2::Any)
    Expr(:call,:irfft,e1,expr(o2))
end
function irfft(o1::Any,e2::Expr)
    Expr(:call,:irfft,expr(o1),e2)
end
function irfft(e1::Expr,e2::Expr)
    Expr(:call,:irfft,e1,e2)
end
function irfft(e1::Expr,o2::Any,o3::Any)
    Expr(:call,:irfft,e1,expr(o2),expr(o3))
end
function irfft(o1::Any,e2::Expr,o3::Any)
    Expr(:call,:irfft,expr(o1),e2,expr(o3))
end
function irfft(e1::Expr,e2::Expr,o3::Any)
    Expr(:call,:irfft,e1,e2,expr(o3))
end
function irfft(e1::Expr,e2::Expr,e3::Expr)
    Expr(:call,:irfft,e1,e2,e3)
end
function is_apple(e1::Expr)
    Expr(:call,:is_apple,e1)
end
function is_bsd(e1::Expr)
    Expr(:call,:is_bsd,e1)
end
function is_linux(e1::Expr)
    Expr(:call,:is_linux,e1)
end
function is_unix(e1::Expr)
    Expr(:call,:is_unix,e1)
end
function is_windows(e1::Expr)
    Expr(:call,:is_windows,e1)
end
function isabspath(e1::Expr)
    Expr(:call,:isabspath,e1)
end
function isalnum(e1::Expr)
    Expr(:call,:isalnum,e1)
end
function isalpha(e1::Expr)
    Expr(:call,:isalpha,e1)
end
function isapprox(e1::Expr,o2::Any)
    Expr(:call,:isapprox,e1,expr(o2))
end
function isapprox(o1::Any,e2::Expr)
    Expr(:call,:isapprox,expr(o1),e2)
end
function isapprox(e1::Expr,e2::Expr)
    Expr(:call,:isapprox,e1,e2)
end
function isascii(e1::Expr)
    Expr(:call,:isascii,e1)
end
function isassigned(e1::Expr,o2::Any)
    Expr(:call,:isassigned,e1,expr(o2))
end
function isassigned(o1::Any,e2::Expr)
    Expr(:call,:isassigned,expr(o1),e2)
end
function isassigned(e1::Expr,e2::Expr)
    Expr(:call,:isassigned,e1,e2)
end
function isassigned(e1::Expr,o2::Any,o3::Any)
    Expr(:call,:isassigned,e1,expr(o2),expr(o3))
end
function isassigned(o1::Any,e2::Expr,o3::Any)
    Expr(:call,:isassigned,expr(o1),e2,expr(o3))
end
function isassigned(e1::Expr,e2::Expr,o3::Any)
    Expr(:call,:isassigned,e1,e2,expr(o3))
end
function isassigned(o1::Any,o2::Any,e3::Expr)
    Expr(:call,:isassigned,expr(o1),expr(o2),e3)
end
function isassigned(e1::Expr,o2::Any,e3::Expr)
    Expr(:call,:isassigned,e1,expr(o2),e3)
end
function isassigned(o1::Any,e2::Expr,e3::Expr)
    Expr(:call,:isassigned,expr(o1),e2,e3)
end
function isassigned(e1::Expr,e2::Expr,e3::Expr)
    Expr(:call,:isassigned,e1,e2,e3)
end
function isassigned(e1::Expr)
    Expr(:call,:isassigned,e1)
end
function iscntrl(e1::Expr)
    Expr(:call,:iscntrl,e1)
end
function isconst(e1::Expr,o2::Any)
    Expr(:call,:isconst,e1,expr(o2))
end
function isconst(o1::Any,e2::Expr)
    Expr(:call,:isconst,expr(o1),e2)
end
function isconst(e1::Expr,e2::Expr)
    Expr(:call,:isconst,e1,e2)
end
function isconst(e1::Expr)
    Expr(:call,:isconst,e1)
end
function isdiag(e1::Expr)
    Expr(:call,:isdiag,e1)
end
function isdigit(e1::Expr)
    Expr(:call,:isdigit,e1)
end
function isdirpath(e1::Expr)
    Expr(:call,:isdirpath,e1)
end
function isempty(e1::Expr,o2::Any)
    Expr(:call,:isempty,e1,expr(o2))
end
function isempty(o1::Any,e2::Expr)
    Expr(:call,:isempty,expr(o1),e2)
end
function isempty(e1::Expr,e2::Expr)
    Expr(:call,:isempty,e1,e2)
end
function iseven(e1::Expr)
    Expr(:call,:iseven,e1)
end
function isfinite(e1::Expr)
    Expr(:call,:isfinite,e1)
end
function isgraph(e1::Expr)
    Expr(:call,:isgraph,e1)
end
function ishermitian(e1::Expr)
    Expr(:call,:ishermitian,e1)
end
function isimag(e1::Expr)
    Expr(:call,:isimag,e1)
end
function isinf(e1::Expr)
    Expr(:call,:isinf,e1)
end
function isinteger(e1::Expr)
    Expr(:call,:isinteger,e1)
end
function isless(e1::Expr,o2::Any)
    Expr(:call,:isless,e1,expr(o2))
end
function isless(o1::Any,e2::Expr)
    Expr(:call,:isless,expr(o1),e2)
end
function isless(e1::Expr,e2::Expr)
    Expr(:call,:isless,e1,e2)
end
function islocked(e1::Expr)
    Expr(:call,:islocked,e1)
end
function islower(e1::Expr)
    Expr(:call,:islower,e1)
end
function ismarked(e1::Expr)
    Expr(:call,:ismarked,e1)
end
function ismatch(e1::Expr,o2::Any)
    Expr(:call,:ismatch,e1,expr(o2))
end
function ismatch(o1::Any,e2::Expr)
    Expr(:call,:ismatch,expr(o1),e2)
end
function ismatch(e1::Expr,e2::Expr)
    Expr(:call,:ismatch,e1,e2)
end
function ismatch(e1::Expr,o2::Any,o3::Any)
    Expr(:call,:ismatch,e1,expr(o2),expr(o3))
end
function ismatch(o1::Any,e2::Expr,o3::Any)
    Expr(:call,:ismatch,expr(o1),e2,expr(o3))
end
function ismatch(e1::Expr,e2::Expr,o3::Any)
    Expr(:call,:ismatch,e1,e2,expr(o3))
end
function ismatch(o1::Any,o2::Any,e3::Expr)
    Expr(:call,:ismatch,expr(o1),expr(o2),e3)
end
function ismatch(e1::Expr,o2::Any,e3::Expr)
    Expr(:call,:ismatch,e1,expr(o2),e3)
end
function ismatch(o1::Any,e2::Expr,e3::Expr)
    Expr(:call,:ismatch,expr(o1),e2,e3)
end
function ismatch(e1::Expr,e2::Expr,e3::Expr)
    Expr(:call,:ismatch,e1,e2,e3)
end
function isnan(e1::Expr)
    Expr(:call,:isnan,e1)
end
function isnumber(e1::Expr)
    Expr(:call,:isnumber,e1)
end
function isodd(e1::Expr)
    Expr(:call,:isodd,e1)
end
function isopen(e1::Expr)
    Expr(:call,:isopen,e1)
end
function isposdef(e1::Expr,o2::Any)
    Expr(:call,:isposdef,e1,expr(o2))
end
function isposdef(o1::Any,e2::Expr)
    Expr(:call,:isposdef,expr(o1),e2)
end
function isposdef(e1::Expr,e2::Expr)
    Expr(:call,:isposdef,e1,e2)
end
function isposdef(e1::Expr)
    Expr(:call,:isposdef,e1)
end
function isposdef!(e1::Expr,o2::Any)
    Expr(:call,:isposdef!,e1,expr(o2))
end
function isposdef!(o1::Any,e2::Expr)
    Expr(:call,:isposdef!,expr(o1),e2)
end
function isposdef!(e1::Expr,e2::Expr)
    Expr(:call,:isposdef!,e1,e2)
end
function isposdef!(e1::Expr)
    Expr(:call,:isposdef!,e1)
end
function ispow2(e1::Expr)
    Expr(:call,:ispow2,e1)
end
function isprint(e1::Expr)
    Expr(:call,:isprint,e1)
end
function ispunct(e1::Expr)
    Expr(:call,:ispunct,e1)
end
function isqrt(e1::Expr)
    Expr(:call,:isqrt,e1)
end
function isready(e1::Expr,o2::Any)
    Expr(:call,:isready,e1,expr(o2))
end
function isready(o1::Any,e2::Expr)
    Expr(:call,:isready,expr(o1),e2)
end
function isready(e1::Expr,e2::Expr)
    Expr(:call,:isready,e1,e2)
end
function isready(e1::Expr)
    Expr(:call,:isready,e1)
end
function isreal(e1::Expr)
    Expr(:call,:isreal,e1)
end
function issorted(o1::Any,e2::Expr)
    Expr(:call,:issorted,expr(o1),e2)
end
function issorted(e1::Expr,e2::Expr)
    Expr(:call,:issorted,e1,e2)
end
function isspace(e1::Expr)
    Expr(:call,:isspace,e1)
end
function issparse(e1::Expr)
    Expr(:call,:issparse,e1)
end
function issubnormal(e1::Expr)
    Expr(:call,:issubnormal,e1)
end
function issymmetric(e1::Expr)
    Expr(:call,:issymmetric,e1)
end
function istaskdone(e1::Expr)
    Expr(:call,:istaskdone,e1)
end
function istaskstarted(e1::Expr)
    Expr(:call,:istaskstarted,e1)
end
function istextmime(e1::Expr)
    Expr(:call,:istextmime,e1)
end
function istril(e1::Expr)
    Expr(:call,:istril,e1)
end
function istriu(e1::Expr)
    Expr(:call,:istriu,e1)
end
function isupper(e1::Expr)
    Expr(:call,:isupper,e1)
end
function isvalid(e1::Expr,o2::Any)
    Expr(:call,:isvalid,e1,expr(o2))
end
function isvalid(o1::Any,e2::Expr)
    Expr(:call,:isvalid,expr(o1),e2)
end
function isvalid(e1::Expr,e2::Expr)
    Expr(:call,:isvalid,e1,e2)
end
function isvalid(e1::Expr)
    Expr(:call,:isvalid,e1)
end
function isxdigit(e1::Expr)
    Expr(:call,:isxdigit,e1)
end
function joinpath(e1::Expr,o2::Any)
    Expr(:call,:joinpath,e1,expr(o2))
end
function joinpath(o1::Any,e2::Expr)
    Expr(:call,:joinpath,expr(o1),e2)
end
function joinpath(e1::Expr,e2::Expr)
    Expr(:call,:joinpath,e1,e2)
end
function joinpath(e1::Expr,o2::Any,o3::Any)
    Expr(:call,:joinpath,e1,expr(o2),expr(o3))
end
function joinpath(o1::Any,e2::Expr,o3::Any)
    Expr(:call,:joinpath,expr(o1),e2,expr(o3))
end
function joinpath(e1::Expr,e2::Expr,o3::Any)
    Expr(:call,:joinpath,e1,e2,expr(o3))
end
function joinpath(o1::Any,o2::Any,e3::Expr)
    Expr(:call,:joinpath,expr(o1),expr(o2),e3)
end
function joinpath(e1::Expr,o2::Any,e3::Expr)
    Expr(:call,:joinpath,e1,expr(o2),e3)
end
function joinpath(o1::Any,e2::Expr,e3::Expr)
    Expr(:call,:joinpath,expr(o1),e2,e3)
end
function joinpath(e1::Expr,e2::Expr,e3::Expr)
    Expr(:call,:joinpath,e1,e2,e3)
end
function joinpath(e1::Expr)
    Expr(:call,:joinpath,e1)
end
function keys(e1::Expr,o2::Any)
    Expr(:call,:keys,e1,expr(o2))
end
function keys(o1::Any,e2::Expr)
    Expr(:call,:keys,expr(o1),e2)
end
function keys(e1::Expr,e2::Expr)
    Expr(:call,:keys,e1,e2)
end
function keys(e1::Expr,o2::Any,o3::Any)
    Expr(:call,:keys,e1,expr(o2),expr(o3))
end
function keys(o1::Any,e2::Expr,o3::Any)
    Expr(:call,:keys,expr(o1),e2,expr(o3))
end
function keys(e1::Expr,e2::Expr,o3::Any)
    Expr(:call,:keys,e1,e2,expr(o3))
end
function keys(e1::Expr,e2::Expr,e3::Expr)
    Expr(:call,:keys,e1,e2,e3)
end
function keys(e1::Expr)
    Expr(:call,:keys,e1)
end
function keytype(e1::Expr)
    Expr(:call,:keytype,e1)
end
function kill(e1::Expr,o2::Any)
    Expr(:call,:kill,e1,expr(o2))
end
function kill(o1::Any,e2::Expr)
    Expr(:call,:kill,expr(o1),e2)
end
function kill(e1::Expr,e2::Expr)
    Expr(:call,:kill,e1,e2)
end
function kill(e1::Expr,o2::Any,o3::Any)
    Expr(:call,:kill,e1,expr(o2),expr(o3))
end
function kill(o1::Any,e2::Expr,o3::Any)
    Expr(:call,:kill,expr(o1),e2,expr(o3))
end
function kill(e1::Expr,e2::Expr,o3::Any)
    Expr(:call,:kill,e1,e2,expr(o3))
end
function kill(o1::Any,o2::Any,e3::Expr)
    Expr(:call,:kill,expr(o1),expr(o2),e3)
end
function kill(e1::Expr,o2::Any,e3::Expr)
    Expr(:call,:kill,e1,expr(o2),e3)
end
function kill(o1::Any,e2::Expr,e3::Expr)
    Expr(:call,:kill,expr(o1),e2,e3)
end
function kill(e1::Expr,e2::Expr,e3::Expr)
    Expr(:call,:kill,e1,e2,e3)
end
function kill(e1::Expr)
    Expr(:call,:kill,e1)
end
function kron(e1::Expr,o2::Any)
    Expr(:call,:kron,e1,expr(o2))
end
function kron(o1::Any,e2::Expr)
    Expr(:call,:kron,expr(o1),e2)
end
function kron(e1::Expr,e2::Expr)
    Expr(:call,:kron,e1,e2)
end
function launch(e1::Expr,o2::Any,o3::Any,o4::Any)
    Expr(:call,:launch,e1,expr(o2),expr(o3),expr(o4))
end
function launch(o1::Any,e2::Expr,o3::Any,o4::Any)
    Expr(:call,:launch,expr(o1),e2,expr(o3),expr(o4))
end
function launch(e1::Expr,e2::Expr,o3::Any,o4::Any)
    Expr(:call,:launch,e1,e2,expr(o3),expr(o4))
end
function launch(o1::Any,o2::Any,e3::Expr,o4::Any)
    Expr(:call,:launch,expr(o1),expr(o2),e3,expr(o4))
end
function launch(e1::Expr,o2::Any,e3::Expr,o4::Any)
    Expr(:call,:launch,e1,expr(o2),e3,expr(o4))
end
function launch(o1::Any,e2::Expr,e3::Expr,o4::Any)
    Expr(:call,:launch,expr(o1),e2,e3,expr(o4))
end
function launch(e1::Expr,e2::Expr,e3::Expr,o4::Any)
    Expr(:call,:launch,e1,e2,e3,expr(o4))
end
function launch(o1::Any,o2::Any,o3::Any,e4::Expr)
    Expr(:call,:launch,expr(o1),expr(o2),expr(o3),e4)
end
function launch(e1::Expr,o2::Any,o3::Any,e4::Expr)
    Expr(:call,:launch,e1,expr(o2),expr(o3),e4)
end
function launch(o1::Any,e2::Expr,o3::Any,e4::Expr)
    Expr(:call,:launch,expr(o1),e2,expr(o3),e4)
end
function launch(e1::Expr,e2::Expr,o3::Any,e4::Expr)
    Expr(:call,:launch,e1,e2,expr(o3),e4)
end
function launch(o1::Any,o2::Any,e3::Expr,e4::Expr)
    Expr(:call,:launch,expr(o1),expr(o2),e3,e4)
end
function launch(e1::Expr,o2::Any,e3::Expr,e4::Expr)
    Expr(:call,:launch,e1,expr(o2),e3,e4)
end
function launch(o1::Any,e2::Expr,e3::Expr,e4::Expr)
    Expr(:call,:launch,expr(o1),e2,e3,e4)
end
function launch(e1::Expr,e2::Expr,e3::Expr,e4::Expr)
    Expr(:call,:launch,e1,e2,e3,e4)
end
function lbeta(e1::Expr,o2::Any)
    Expr(:call,:lbeta,e1,expr(o2))
end
function lbeta(o1::Any,e2::Expr)
    Expr(:call,:lbeta,expr(o1),e2)
end
function lbeta(e1::Expr,e2::Expr)
    Expr(:call,:lbeta,e1,e2)
end
function lcfirst(e1::Expr)
    Expr(:call,:lcfirst,e1)
end
function lcm(e1::Expr,o2::Any)
    Expr(:call,:lcm,e1,expr(o2))
end
function lcm(o1::Any,e2::Expr)
    Expr(:call,:lcm,expr(o1),e2)
end
function lcm(e1::Expr,e2::Expr)
    Expr(:call,:lcm,e1,e2)
end
function lcm(e1::Expr)
    Expr(:call,:lcm,e1)
end
function ldexp(e1::Expr,o2::Any)
    Expr(:call,:ldexp,e1,expr(o2))
end
function ldexp(o1::Any,e2::Expr)
    Expr(:call,:ldexp,expr(o1),e2)
end
function ldexp(e1::Expr,e2::Expr)
    Expr(:call,:ldexp,e1,e2)
end
function ldltfact(e1::Expr)
    Expr(:call,:ldltfact,e1)
end
function ldltfact!(e1::Expr,o2::Any)
    Expr(:call,:ldltfact!,e1,expr(o2))
end
function ldltfact!(o1::Any,e2::Expr)
    Expr(:call,:ldltfact!,expr(o1),e2)
end
function ldltfact!(e1::Expr,e2::Expr)
    Expr(:call,:ldltfact!,e1,e2)
end
function ldltfact!(e1::Expr)
    Expr(:call,:ldltfact!,e1)
end
function leading_ones(e1::Expr)
    Expr(:call,:leading_ones,e1)
end
function leading_zeros(e1::Expr)
    Expr(:call,:leading_zeros,e1)
end
function length(e1::Expr,o2::Any)
    Expr(:call,:length,e1,expr(o2))
end
function length(o1::Any,e2::Expr)
    Expr(:call,:length,expr(o1),e2)
end
function length(e1::Expr,e2::Expr)
    Expr(:call,:length,e1,e2)
end
function length(e1::Expr)
    Expr(:call,:length,e1)
end
function lfact(e1::Expr)
    Expr(:call,:lfact,e1)
end
function lgamma(e1::Expr)
    Expr(:call,:lgamma,e1)
end
function linreg(e1::Expr,o2::Any)
    Expr(:call,:linreg,e1,expr(o2))
end
function linreg(o1::Any,e2::Expr)
    Expr(:call,:linreg,expr(o1),e2)
end
function linreg(e1::Expr,e2::Expr)
    Expr(:call,:linreg,e1,e2)
end
function linspace(e1::Expr,o2::Any)
    Expr(:call,:linspace,e1,expr(o2))
end
function linspace(o1::Any,e2::Expr)
    Expr(:call,:linspace,expr(o1),e2)
end
function linspace(e1::Expr,e2::Expr)
    Expr(:call,:linspace,e1,e2)
end
function linspace(e1::Expr,o2::Any,o3::Any)
    Expr(:call,:linspace,e1,expr(o2),expr(o3))
end
function linspace(o1::Any,e2::Expr,o3::Any)
    Expr(:call,:linspace,expr(o1),e2,expr(o3))
end
function linspace(e1::Expr,e2::Expr,o3::Any)
    Expr(:call,:linspace,e1,e2,expr(o3))
end
function linspace(o1::Any,o2::Any,e3::Expr)
    Expr(:call,:linspace,expr(o1),expr(o2),e3)
end
function linspace(e1::Expr,o2::Any,e3::Expr)
    Expr(:call,:linspace,e1,expr(o2),e3)
end
function linspace(o1::Any,e2::Expr,e3::Expr)
    Expr(:call,:linspace,expr(o1),e2,e3)
end
function linspace(e1::Expr,e2::Expr,e3::Expr)
    Expr(:call,:linspace,e1,e2,e3)
end
function listen(e1::Expr,o2::Any)
    Expr(:call,:listen,e1,expr(o2))
end
function listen(o1::Any,e2::Expr)
    Expr(:call,:listen,expr(o1),e2)
end
function listen(e1::Expr,e2::Expr)
    Expr(:call,:listen,e1,e2)
end
function listenany(e1::Expr,o2::Any)
    Expr(:call,:listenany,e1,expr(o2))
end
function listenany(e1::Expr,e2::Expr)
    Expr(:call,:listenany,e1,e2)
end
function localindexes(e1::Expr)
    Expr(:call,:localindexes,e1)
end
function lock(e1::Expr)
    Expr(:call,:lock,e1)
end
function log(e1::Expr,o2::Any)
    Expr(:call,:log,e1,expr(o2))
end
function log(o1::Any,e2::Expr)
    Expr(:call,:log,expr(o1),e2)
end
function log(e1::Expr,e2::Expr)
    Expr(:call,:log,e1,e2)
end
function log(e1::Expr)
    Expr(:call,:log,e1)
end
function log10(e1::Expr)
    Expr(:call,:log10,e1)
end
function log1p(e1::Expr)
    Expr(:call,:log1p,e1)
end
function log2(e1::Expr)
    Expr(:call,:log2,e1)
end
function logabsdet(e1::Expr)
    Expr(:call,:logabsdet,e1)
end
function logdet(e1::Expr)
    Expr(:call,:logdet,e1)
end
function logm(e1::Expr)
    Expr(:call,:logm,e1)
end
function logspace(e1::Expr,o2::Any)
    Expr(:call,:logspace,e1,expr(o2))
end
function logspace(o1::Any,e2::Expr)
    Expr(:call,:logspace,expr(o1),e2)
end
function logspace(e1::Expr,e2::Expr)
    Expr(:call,:logspace,e1,e2)
end
function logspace(e1::Expr,o2::Any,o3::Any)
    Expr(:call,:logspace,e1,expr(o2),expr(o3))
end
function logspace(o1::Any,e2::Expr,o3::Any)
    Expr(:call,:logspace,expr(o1),e2,expr(o3))
end
function logspace(e1::Expr,e2::Expr,o3::Any)
    Expr(:call,:logspace,e1,e2,expr(o3))
end
function logspace(o1::Any,o2::Any,e3::Expr)
    Expr(:call,:logspace,expr(o1),expr(o2),e3)
end
function logspace(e1::Expr,o2::Any,e3::Expr)
    Expr(:call,:logspace,e1,expr(o2),e3)
end
function logspace(o1::Any,e2::Expr,e3::Expr)
    Expr(:call,:logspace,expr(o1),e2,e3)
end
function logspace(e1::Expr,e2::Expr,e3::Expr)
    Expr(:call,:logspace,e1,e2,e3)
end
function lowercase(e1::Expr)
    Expr(:call,:lowercase,e1)
end
function lpad(o1::Any,e2::Expr)
    Expr(:call,:lpad,expr(o1),e2)
end
function lpad(e1::Expr,e2::Expr)
    Expr(:call,:lpad,e1,e2)
end
function lpad(o1::Any,e2::Expr,o3::Any)
    Expr(:call,:lpad,expr(o1),e2,expr(o3))
end
function lpad(o1::Any,e2::Expr,e3::Expr)
    Expr(:call,:lpad,expr(o1),e2,e3)
end
function lpad(e1::Expr,e2::Expr,o3::Any)
    Expr(:call,:lpad,e1,e2,expr(o3))
end
function lpad(e1::Expr,e2::Expr,e3::Expr)
    Expr(:call,:lpad,e1,e2,e3)
end
function lq(e1::Expr)
    Expr(:call,:lq,e1)
end
function lqfact(e1::Expr)
    Expr(:call,:lqfact,e1)
end
function lqfact!(e1::Expr)
    Expr(:call,:lqfact!,e1)
end
function lstrip(e1::Expr,o2::Any)
    Expr(:call,:lstrip,e1,expr(o2))
end
function lstrip(o1::Any,e2::Expr)
    Expr(:call,:lstrip,expr(o1),e2)
end
function lstrip(e1::Expr,e2::Expr)
    Expr(:call,:lstrip,e1,e2)
end
function lstrip(e1::Expr)
    Expr(:call,:lstrip,e1)
end
function lu(e1::Expr,o2::Any)
    Expr(:call,:lu,e1,expr(o2))
end
function lu(o1::Any,e2::Expr)
    Expr(:call,:lu,expr(o1),e2)
end
function lu(e1::Expr,e2::Expr)
    Expr(:call,:lu,e1,e2)
end
function lu(e1::Expr)
    Expr(:call,:lu,e1)
end
function lufact(e1::Expr,o2::Any)
    Expr(:call,:lufact,e1,expr(o2))
end
function lufact(o1::Any,e2::Expr)
    Expr(:call,:lufact,expr(o1),e2)
end
function lufact(e1::Expr,e2::Expr)
    Expr(:call,:lufact,e1,e2)
end
function lufact(e1::Expr)
    Expr(:call,:lufact,e1)
end
function lufact!(e1::Expr,o2::Any)
    Expr(:call,:lufact!,e1,expr(o2))
end
function lufact!(o1::Any,e2::Expr)
    Expr(:call,:lufact!,expr(o1),e2)
end
function lufact!(e1::Expr,e2::Expr)
    Expr(:call,:lufact!,e1,e2)
end
function lufact!(e1::Expr)
    Expr(:call,:lufact!,e1)
end
function lyap(e1::Expr,o2::Any)
    Expr(:call,:lyap,e1,expr(o2))
end
function lyap(o1::Any,e2::Expr)
    Expr(:call,:lyap,expr(o1),e2)
end
function lyap(e1::Expr,e2::Expr)
    Expr(:call,:lyap,e1,e2)
end
function manage(e1::Expr,o2::Any,o3::Any,o4::Any)
    Expr(:call,:manage,e1,expr(o2),expr(o3),expr(o4))
end
function manage(o1::Any,e2::Expr,o3::Any,o4::Any)
    Expr(:call,:manage,expr(o1),e2,expr(o3),expr(o4))
end
function manage(e1::Expr,e2::Expr,o3::Any,o4::Any)
    Expr(:call,:manage,e1,e2,expr(o3),expr(o4))
end
function manage(o1::Any,o2::Any,e3::Expr,o4::Any)
    Expr(:call,:manage,expr(o1),expr(o2),e3,expr(o4))
end
function manage(e1::Expr,o2::Any,e3::Expr,o4::Any)
    Expr(:call,:manage,e1,expr(o2),e3,expr(o4))
end
function manage(o1::Any,e2::Expr,e3::Expr,o4::Any)
    Expr(:call,:manage,expr(o1),e2,e3,expr(o4))
end
function manage(e1::Expr,e2::Expr,e3::Expr,o4::Any)
    Expr(:call,:manage,e1,e2,e3,expr(o4))
end
function manage(o1::Any,o2::Any,o3::Any,e4::Expr)
    Expr(:call,:manage,expr(o1),expr(o2),expr(o3),e4)
end
function manage(e1::Expr,o2::Any,o3::Any,e4::Expr)
    Expr(:call,:manage,e1,expr(o2),expr(o3),e4)
end
function manage(o1::Any,e2::Expr,o3::Any,e4::Expr)
    Expr(:call,:manage,expr(o1),e2,expr(o3),e4)
end
function manage(e1::Expr,e2::Expr,o3::Any,e4::Expr)
    Expr(:call,:manage,e1,e2,expr(o3),e4)
end
function manage(o1::Any,o2::Any,e3::Expr,e4::Expr)
    Expr(:call,:manage,expr(o1),expr(o2),e3,e4)
end
function manage(e1::Expr,o2::Any,e3::Expr,e4::Expr)
    Expr(:call,:manage,e1,expr(o2),e3,e4)
end
function manage(o1::Any,e2::Expr,e3::Expr,e4::Expr)
    Expr(:call,:manage,expr(o1),e2,e3,e4)
end
function manage(e1::Expr,e2::Expr,e3::Expr,e4::Expr)
    Expr(:call,:manage,e1,e2,e3,e4)
end
function map!(o1::Any,e2::Expr,o3::Any,o4::Any)
    Expr(:call,:map!,expr(o1),e2,expr(o3),expr(o4))
end
function map!(o1::Any,o2::Any,e3::Expr,o4::Any)
    Expr(:call,:map!,expr(o1),expr(o2),e3,expr(o4))
end
function map!(o1::Any,e2::Expr,e3::Expr,o4::Any)
    Expr(:call,:map!,expr(o1),e2,e3,expr(o4))
end
function map!(o1::Any,o2::Any,o3::Any,e4::Expr)
    Expr(:call,:map!,expr(o1),expr(o2),expr(o3),e4)
end
function map!(o1::Any,e2::Expr,o3::Any,e4::Expr)
    Expr(:call,:map!,expr(o1),e2,expr(o3),e4)
end
function map!(o1::Any,o2::Any,e3::Expr,e4::Expr)
    Expr(:call,:map!,expr(o1),expr(o2),e3,e4)
end
function map!(o1::Any,e2::Expr,e3::Expr,e4::Expr)
    Expr(:call,:map!,expr(o1),e2,e3,e4)
end
function map!(e1::Expr,e2::Expr,e3::Expr,e4::Expr)
    Expr(:call,:map!,e1,e2,e3,e4)
end
function map!(o1::Any,e2::Expr)
    Expr(:call,:map!,expr(o1),e2)
end
function map!(e1::Expr,e2::Expr)
    Expr(:call,:map!,e1,e2)
end
function map!(o1::Any,e2::Expr,o3::Any)
    Expr(:call,:map!,expr(o1),e2,expr(o3))
end
function map!(o1::Any,o2::Any,e3::Expr)
    Expr(:call,:map!,expr(o1),expr(o2),e3)
end
function map!(o1::Any,e2::Expr,e3::Expr)
    Expr(:call,:map!,expr(o1),e2,e3)
end
function map!(e1::Expr,e2::Expr,e3::Expr)
    Expr(:call,:map!,e1,e2,e3)
end
function mapreducedim(o1::Any,o2::Any,e3::Expr,o4::Any)
    Expr(:call,:mapreducedim,expr(o1),expr(o2),e3,expr(o4))
end
function mapreducedim(o1::Any,o2::Any,e3::Expr,e4::Expr)
    Expr(:call,:mapreducedim,expr(o1),expr(o2),e3,e4)
end
function mapreducedim(o1::Any,e2::Expr,e3::Expr,o4::Any)
    Expr(:call,:mapreducedim,expr(o1),e2,e3,expr(o4))
end
function mapreducedim(o1::Any,e2::Expr,e3::Expr,e4::Expr)
    Expr(:call,:mapreducedim,expr(o1),e2,e3,e4)
end
function mapreducedim(e1::Expr,o2::Any,e3::Expr,o4::Any)
    Expr(:call,:mapreducedim,e1,expr(o2),e3,expr(o4))
end
function mapreducedim(e1::Expr,o2::Any,e3::Expr,e4::Expr)
    Expr(:call,:mapreducedim,e1,expr(o2),e3,e4)
end
function mapreducedim(e1::Expr,e2::Expr,e3::Expr,o4::Any)
    Expr(:call,:mapreducedim,e1,e2,e3,expr(o4))
end
function mapreducedim(e1::Expr,e2::Expr,e3::Expr,e4::Expr)
    Expr(:call,:mapreducedim,e1,e2,e3,e4)
end
function mapreducedim(o1::Any,o2::Any,e3::Expr,o4::Any,o5::Any)
    Expr(:call,:mapreducedim,expr(o1),expr(o2),e3,expr(o4),expr(o5))
end
function mapreducedim(o1::Any,o2::Any,e3::Expr,e4::Expr,o5::Any)
    Expr(:call,:mapreducedim,expr(o1),expr(o2),e3,e4,expr(o5))
end
function mapreducedim(o1::Any,e2::Expr,e3::Expr,o4::Any,o5::Any)
    Expr(:call,:mapreducedim,expr(o1),e2,e3,expr(o4),expr(o5))
end
function mapreducedim(o1::Any,e2::Expr,e3::Expr,e4::Expr,o5::Any)
    Expr(:call,:mapreducedim,expr(o1),e2,e3,e4,expr(o5))
end
function mapreducedim(o1::Any,o2::Any,e3::Expr,o4::Any,e5::Expr)
    Expr(:call,:mapreducedim,expr(o1),expr(o2),e3,expr(o4),e5)
end
function mapreducedim(o1::Any,o2::Any,e3::Expr,e4::Expr,e5::Expr)
    Expr(:call,:mapreducedim,expr(o1),expr(o2),e3,e4,e5)
end
function mapreducedim(o1::Any,e2::Expr,e3::Expr,o4::Any,e5::Expr)
    Expr(:call,:mapreducedim,expr(o1),e2,e3,expr(o4),e5)
end
function mapreducedim(o1::Any,e2::Expr,e3::Expr,e4::Expr,e5::Expr)
    Expr(:call,:mapreducedim,expr(o1),e2,e3,e4,e5)
end
function mapreducedim(e1::Expr,o2::Any,e3::Expr,o4::Any,o5::Any)
    Expr(:call,:mapreducedim,e1,expr(o2),e3,expr(o4),expr(o5))
end
function mapreducedim(e1::Expr,o2::Any,e3::Expr,e4::Expr,o5::Any)
    Expr(:call,:mapreducedim,e1,expr(o2),e3,e4,expr(o5))
end
function mapreducedim(e1::Expr,e2::Expr,e3::Expr,o4::Any,o5::Any)
    Expr(:call,:mapreducedim,e1,e2,e3,expr(o4),expr(o5))
end
function mapreducedim(e1::Expr,e2::Expr,e3::Expr,e4::Expr,o5::Any)
    Expr(:call,:mapreducedim,e1,e2,e3,e4,expr(o5))
end
function mapreducedim(e1::Expr,o2::Any,e3::Expr,o4::Any,e5::Expr)
    Expr(:call,:mapreducedim,e1,expr(o2),e3,expr(o4),e5)
end
function mapreducedim(e1::Expr,o2::Any,e3::Expr,e4::Expr,e5::Expr)
    Expr(:call,:mapreducedim,e1,expr(o2),e3,e4,e5)
end
function mapreducedim(e1::Expr,e2::Expr,e3::Expr,o4::Any,e5::Expr)
    Expr(:call,:mapreducedim,e1,e2,e3,expr(o4),e5)
end
function mapreducedim(e1::Expr,e2::Expr,e3::Expr,e4::Expr,e5::Expr)
    Expr(:call,:mapreducedim,e1,e2,e3,e4,e5)
end
function mapslices(o1::Any,e2::Expr,o3::Any)
    Expr(:call,:mapslices,expr(o1),e2,expr(o3))
end
function mapslices(o1::Any,e2::Expr,e3::Expr)
    Expr(:call,:mapslices,expr(o1),e2,e3)
end
function mapslices(e1::Expr,e2::Expr,o3::Any)
    Expr(:call,:mapslices,e1,e2,expr(o3))
end
function mapslices(e1::Expr,e2::Expr,e3::Expr)
    Expr(:call,:mapslices,e1,e2,e3)
end
function mark(e1::Expr)
    Expr(:call,:mark,e1)
end
function match(e1::Expr,o2::Any,o3::Any,o4::Any)
    Expr(:call,:match,e1,expr(o2),expr(o3),expr(o4))
end
function match(o1::Any,e2::Expr,o3::Any,o4::Any)
    Expr(:call,:match,expr(o1),e2,expr(o3),expr(o4))
end
function match(e1::Expr,e2::Expr,o3::Any,o4::Any)
    Expr(:call,:match,e1,e2,expr(o3),expr(o4))
end
function match(o1::Any,o2::Any,e3::Expr,o4::Any)
    Expr(:call,:match,expr(o1),expr(o2),e3,expr(o4))
end
function match(e1::Expr,o2::Any,e3::Expr,o4::Any)
    Expr(:call,:match,e1,expr(o2),e3,expr(o4))
end
function match(o1::Any,e2::Expr,e3::Expr,o4::Any)
    Expr(:call,:match,expr(o1),e2,e3,expr(o4))
end
function match(e1::Expr,e2::Expr,e3::Expr,o4::Any)
    Expr(:call,:match,e1,e2,e3,expr(o4))
end
function match(o1::Any,o2::Any,o3::Any,e4::Expr)
    Expr(:call,:match,expr(o1),expr(o2),expr(o3),e4)
end
function match(e1::Expr,o2::Any,o3::Any,e4::Expr)
    Expr(:call,:match,e1,expr(o2),expr(o3),e4)
end
function match(o1::Any,e2::Expr,o3::Any,e4::Expr)
    Expr(:call,:match,expr(o1),e2,expr(o3),e4)
end
function match(e1::Expr,e2::Expr,o3::Any,e4::Expr)
    Expr(:call,:match,e1,e2,expr(o3),e4)
end
function match(o1::Any,o2::Any,e3::Expr,e4::Expr)
    Expr(:call,:match,expr(o1),expr(o2),e3,e4)
end
function match(e1::Expr,o2::Any,e3::Expr,e4::Expr)
    Expr(:call,:match,e1,expr(o2),e3,e4)
end
function match(o1::Any,e2::Expr,e3::Expr,e4::Expr)
    Expr(:call,:match,expr(o1),e2,e3,e4)
end
function match(e1::Expr,e2::Expr,e3::Expr,e4::Expr)
    Expr(:call,:match,e1,e2,e3,e4)
end
function match(e1::Expr,o2::Any)
    Expr(:call,:match,e1,expr(o2))
end
function match(o1::Any,e2::Expr)
    Expr(:call,:match,expr(o1),e2)
end
function match(e1::Expr,e2::Expr)
    Expr(:call,:match,e1,e2)
end
function match(e1::Expr,o2::Any,o3::Any)
    Expr(:call,:match,e1,expr(o2),expr(o3))
end
function match(o1::Any,e2::Expr,o3::Any)
    Expr(:call,:match,expr(o1),e2,expr(o3))
end
function match(e1::Expr,e2::Expr,o3::Any)
    Expr(:call,:match,e1,e2,expr(o3))
end
function match(o1::Any,o2::Any,e3::Expr)
    Expr(:call,:match,expr(o1),expr(o2),e3)
end
function match(e1::Expr,o2::Any,e3::Expr)
    Expr(:call,:match,e1,expr(o2),e3)
end
function match(o1::Any,e2::Expr,e3::Expr)
    Expr(:call,:match,expr(o1),e2,e3)
end
function match(e1::Expr,e2::Expr,e3::Expr)
    Expr(:call,:match,e1,e2,e3)
end
function matchall(e1::Expr,o2::Any)
    Expr(:call,:matchall,e1,expr(o2))
end
function matchall(o1::Any,e2::Expr)
    Expr(:call,:matchall,expr(o1),e2)
end
function matchall(e1::Expr,e2::Expr)
    Expr(:call,:matchall,e1,e2)
end
function matchall(e1::Expr,o2::Any,o3::Any)
    Expr(:call,:matchall,e1,expr(o2),expr(o3))
end
function matchall(o1::Any,e2::Expr,o3::Any)
    Expr(:call,:matchall,expr(o1),e2,expr(o3))
end
function matchall(e1::Expr,e2::Expr,o3::Any)
    Expr(:call,:matchall,e1,e2,expr(o3))
end
function matchall(o1::Any,o2::Any,e3::Expr)
    Expr(:call,:matchall,expr(o1),expr(o2),e3)
end
function matchall(e1::Expr,o2::Any,e3::Expr)
    Expr(:call,:matchall,e1,expr(o2),e3)
end
function matchall(o1::Any,e2::Expr,e3::Expr)
    Expr(:call,:matchall,expr(o1),e2,e3)
end
function matchall(e1::Expr,e2::Expr,e3::Expr)
    Expr(:call,:matchall,e1,e2,e3)
end
function max(e1::Expr)
    Expr(:call,:max,e1)
end
function maxabs(e1::Expr,o2::Any)
    Expr(:call,:maxabs,e1,expr(o2))
end
function maxabs(e1::Expr,e2::Expr)
    Expr(:call,:maxabs,e1,e2)
end
function maxabs!(e1::Expr,o2::Any)
    Expr(:call,:maxabs!,e1,expr(o2))
end
function maxabs!(o1::Any,e2::Expr)
    Expr(:call,:maxabs!,expr(o1),e2)
end
function maxabs!(e1::Expr,e2::Expr)
    Expr(:call,:maxabs!,e1,e2)
end
function maximum(e1::Expr,o2::Any)
    Expr(:call,:maximum,e1,expr(o2))
end
function maximum(e1::Expr,e2::Expr)
    Expr(:call,:maximum,e1,e2)
end
function maximum(e1::Expr,o2::Any,o3::Any)
    Expr(:call,:maximum,e1,expr(o2),expr(o3))
end
function maximum(o1::Any,e2::Expr,o3::Any)
    Expr(:call,:maximum,expr(o1),e2,expr(o3))
end
function maximum(e1::Expr,e2::Expr,o3::Any)
    Expr(:call,:maximum,e1,e2,expr(o3))
end
function maximum(e1::Expr,e2::Expr,e3::Expr)
    Expr(:call,:maximum,e1,e2,e3)
end
function maximum!(e1::Expr,o2::Any)
    Expr(:call,:maximum!,e1,expr(o2))
end
function maximum!(o1::Any,e2::Expr)
    Expr(:call,:maximum!,expr(o1),e2)
end
function maximum!(e1::Expr,e2::Expr)
    Expr(:call,:maximum!,e1,e2)
end
function maximum!(e1::Expr,o2::Any,o3::Any)
    Expr(:call,:maximum!,e1,expr(o2),expr(o3))
end
function maximum!(o1::Any,e2::Expr,o3::Any)
    Expr(:call,:maximum!,expr(o1),e2,expr(o3))
end
function maximum!(e1::Expr,e2::Expr,o3::Any)
    Expr(:call,:maximum!,e1,e2,expr(o3))
end
function maximum!(o1::Any,o2::Any,e3::Expr)
    Expr(:call,:maximum!,expr(o1),expr(o2),e3)
end
function maximum!(e1::Expr,o2::Any,e3::Expr)
    Expr(:call,:maximum!,e1,expr(o2),e3)
end
function maximum!(o1::Any,e2::Expr,e3::Expr)
    Expr(:call,:maximum!,expr(o1),e2,e3)
end
function maximum!(e1::Expr,e2::Expr,e3::Expr)
    Expr(:call,:maximum!,e1,e2,e3)
end
function maxintfloat(e1::Expr)
    Expr(:call,:maxintfloat,e1)
end
function mean(e1::Expr,o2::Any)
    Expr(:call,:mean,e1,expr(o2))
end
function mean(e1::Expr,e2::Expr)
    Expr(:call,:mean,e1,e2)
end
function mean!(e1::Expr,o2::Any)
    Expr(:call,:mean!,e1,expr(o2))
end
function mean!(o1::Any,e2::Expr)
    Expr(:call,:mean!,expr(o1),e2)
end
function mean!(e1::Expr,e2::Expr)
    Expr(:call,:mean!,e1,e2)
end
function median(e1::Expr,o2::Any)
    Expr(:call,:median,e1,expr(o2))
end
function median(e1::Expr,e2::Expr)
    Expr(:call,:median,e1,e2)
end
function median(e1::Expr)
    Expr(:call,:median,e1)
end
function median!(e1::Expr)
    Expr(:call,:median!,e1)
end
function merge(e1::Expr,o2::Any)
    Expr(:call,:merge,e1,expr(o2))
end
function merge(o1::Any,e2::Expr)
    Expr(:call,:merge,expr(o1),e2)
end
function merge(e1::Expr,e2::Expr)
    Expr(:call,:merge,e1,e2)
end
function merge!(e1::Expr,o2::Any)
    Expr(:call,:merge!,e1,expr(o2))
end
function merge!(o1::Any,e2::Expr)
    Expr(:call,:merge!,expr(o1),e2)
end
function merge!(e1::Expr,e2::Expr)
    Expr(:call,:merge!,e1,e2)
end
function merge!(e1::Expr,o2::Any,o3::Any)
    Expr(:call,:merge!,e1,expr(o2),expr(o3))
end
function merge!(o1::Any,e2::Expr,o3::Any)
    Expr(:call,:merge!,expr(o1),e2,expr(o3))
end
function merge!(e1::Expr,e2::Expr,o3::Any)
    Expr(:call,:merge!,e1,e2,expr(o3))
end
function merge!(o1::Any,o2::Any,e3::Expr)
    Expr(:call,:merge!,expr(o1),expr(o2),e3)
end
function merge!(e1::Expr,o2::Any,e3::Expr)
    Expr(:call,:merge!,e1,expr(o2),e3)
end
function merge!(o1::Any,e2::Expr,e3::Expr)
    Expr(:call,:merge!,expr(o1),e2,e3)
end
function merge!(e1::Expr,e2::Expr,e3::Expr)
    Expr(:call,:merge!,e1,e2,e3)
end
function merge!(e1::Expr)
    Expr(:call,:merge!,e1)
end
function methodswith(e1::Expr,o2::Any,o3::Any,o4::Any)
    Expr(:call,:methodswith,e1,expr(o2),expr(o3),expr(o4))
end
function methodswith(o1::Any,e2::Expr,o3::Any,o4::Any)
    Expr(:call,:methodswith,expr(o1),e2,expr(o3),expr(o4))
end
function methodswith(e1::Expr,e2::Expr,o3::Any,o4::Any)
    Expr(:call,:methodswith,e1,e2,expr(o3),expr(o4))
end
function methodswith(o1::Any,o2::Any,e3::Expr,o4::Any)
    Expr(:call,:methodswith,expr(o1),expr(o2),e3,expr(o4))
end
function methodswith(e1::Expr,o2::Any,e3::Expr,o4::Any)
    Expr(:call,:methodswith,e1,expr(o2),e3,expr(o4))
end
function methodswith(o1::Any,e2::Expr,e3::Expr,o4::Any)
    Expr(:call,:methodswith,expr(o1),e2,e3,expr(o4))
end
function methodswith(e1::Expr,e2::Expr,e3::Expr,o4::Any)
    Expr(:call,:methodswith,e1,e2,e3,expr(o4))
end
function methodswith(e1::Expr,e2::Expr,e3::Expr,e4::Expr)
    Expr(:call,:methodswith,e1,e2,e3,e4)
end
function methodswith(e1::Expr,o2::Any)
    Expr(:call,:methodswith,e1,expr(o2))
end
function methodswith(o1::Any,e2::Expr)
    Expr(:call,:methodswith,expr(o1),e2)
end
function methodswith(e1::Expr,e2::Expr)
    Expr(:call,:methodswith,e1,e2)
end
function methodswith(e1::Expr,o2::Any,o3::Any)
    Expr(:call,:methodswith,e1,expr(o2),expr(o3))
end
function methodswith(o1::Any,e2::Expr,o3::Any)
    Expr(:call,:methodswith,expr(o1),e2,expr(o3))
end
function methodswith(e1::Expr,e2::Expr,o3::Any)
    Expr(:call,:methodswith,e1,e2,expr(o3))
end
function methodswith(o1::Any,o2::Any,e3::Expr)
    Expr(:call,:methodswith,expr(o1),expr(o2),e3)
end
function methodswith(e1::Expr,o2::Any,e3::Expr)
    Expr(:call,:methodswith,e1,expr(o2),e3)
end
function methodswith(o1::Any,e2::Expr,e3::Expr)
    Expr(:call,:methodswith,expr(o1),e2,e3)
end
function methodswith(e1::Expr,e2::Expr,e3::Expr)
    Expr(:call,:methodswith,e1,e2,e3)
end
function methodswith(e1::Expr)
    Expr(:call,:methodswith,e1)
end
function middle(e1::Expr,o2::Any)
    Expr(:call,:middle,e1,expr(o2))
end
function middle(o1::Any,e2::Expr)
    Expr(:call,:middle,expr(o1),e2)
end
function middle(e1::Expr,e2::Expr)
    Expr(:call,:middle,e1,e2)
end
function middle(e1::Expr)
    Expr(:call,:middle,e1)
end
function midpoints(e1::Expr)
    Expr(:call,:midpoints,e1)
end
function mimewritable(e1::Expr,o2::Any)
    Expr(:call,:mimewritable,e1,expr(o2))
end
function mimewritable(e1::Expr,e2::Expr)
    Expr(:call,:mimewritable,e1,e2)
end
function min(e1::Expr)
    Expr(:call,:min,e1)
end
function minabs(e1::Expr,o2::Any)
    Expr(:call,:minabs,e1,expr(o2))
end
function minabs(e1::Expr,e2::Expr)
    Expr(:call,:minabs,e1,e2)
end
function minabs!(e1::Expr,o2::Any)
    Expr(:call,:minabs!,e1,expr(o2))
end
function minabs!(o1::Any,e2::Expr)
    Expr(:call,:minabs!,expr(o1),e2)
end
function minabs!(e1::Expr,e2::Expr)
    Expr(:call,:minabs!,e1,e2)
end
function minimum(e1::Expr,o2::Any)
    Expr(:call,:minimum,e1,expr(o2))
end
function minimum(e1::Expr,e2::Expr)
    Expr(:call,:minimum,e1,e2)
end
function minimum(e1::Expr,o2::Any,o3::Any)
    Expr(:call,:minimum,e1,expr(o2),expr(o3))
end
function minimum(o1::Any,e2::Expr,o3::Any)
    Expr(:call,:minimum,expr(o1),e2,expr(o3))
end
function minimum(e1::Expr,e2::Expr,o3::Any)
    Expr(:call,:minimum,e1,e2,expr(o3))
end
function minimum(e1::Expr,e2::Expr,e3::Expr)
    Expr(:call,:minimum,e1,e2,e3)
end
function minimum!(e1::Expr,o2::Any)
    Expr(:call,:minimum!,e1,expr(o2))
end
function minimum!(o1::Any,e2::Expr)
    Expr(:call,:minimum!,expr(o1),e2)
end
function minimum!(e1::Expr,e2::Expr)
    Expr(:call,:minimum!,e1,e2)
end
function minimum!(e1::Expr,o2::Any,o3::Any)
    Expr(:call,:minimum!,e1,expr(o2),expr(o3))
end
function minimum!(o1::Any,e2::Expr,o3::Any)
    Expr(:call,:minimum!,expr(o1),e2,expr(o3))
end
function minimum!(e1::Expr,e2::Expr,o3::Any)
    Expr(:call,:minimum!,e1,e2,expr(o3))
end
function minimum!(o1::Any,o2::Any,e3::Expr)
    Expr(:call,:minimum!,expr(o1),expr(o2),e3)
end
function minimum!(e1::Expr,o2::Any,e3::Expr)
    Expr(:call,:minimum!,e1,expr(o2),e3)
end
function minimum!(o1::Any,e2::Expr,e3::Expr)
    Expr(:call,:minimum!,expr(o1),e2,e3)
end
function minimum!(e1::Expr,e2::Expr,e3::Expr)
    Expr(:call,:minimum!,e1,e2,e3)
end
function minmax(e1::Expr)
    Expr(:call,:minmax,e1)
end
function mkdir(e1::Expr,o2::Any)
    Expr(:call,:mkdir,e1,expr(o2))
end
function mkdir(o1::Any,e2::Expr)
    Expr(:call,:mkdir,expr(o1),e2)
end
function mkdir(e1::Expr,e2::Expr)
    Expr(:call,:mkdir,e1,e2)
end
function mkdir(e1::Expr)
    Expr(:call,:mkdir,e1)
end
function mkpath(e1::Expr,o2::Any)
    Expr(:call,:mkpath,e1,expr(o2))
end
function mkpath(o1::Any,e2::Expr)
    Expr(:call,:mkpath,expr(o1),e2)
end
function mkpath(e1::Expr,e2::Expr)
    Expr(:call,:mkpath,e1,e2)
end
function mkpath(e1::Expr)
    Expr(:call,:mkpath,e1)
end
function mktemp(e1::Expr,o2::Any)
    Expr(:call,:mktemp,e1,expr(o2))
end
function mktemp(e1::Expr,e2::Expr)
    Expr(:call,:mktemp,e1,e2)
end
function mktempdir(e1::Expr,o2::Any)
    Expr(:call,:mktempdir,e1,expr(o2))
end
function mktempdir(e1::Expr,e2::Expr)
    Expr(:call,:mktempdir,e1,e2)
end
function mod(e1::Expr,o2::Any)
    Expr(:call,:mod,e1,expr(o2))
end
function mod(o1::Any,e2::Expr)
    Expr(:call,:mod,expr(o1),e2)
end
function mod(e1::Expr,e2::Expr)
    Expr(:call,:mod,e1,e2)
end
function mod1(e1::Expr,o2::Any)
    Expr(:call,:mod1,e1,expr(o2))
end
function mod1(o1::Any,e2::Expr)
    Expr(:call,:mod1,expr(o1),e2)
end
function mod1(e1::Expr,e2::Expr)
    Expr(:call,:mod1,e1,e2)
end
function mod2pi(e1::Expr)
    Expr(:call,:mod2pi,e1)
end
function module_name(e1::Expr)
    Expr(:call,:module_name,e1)
end
function module_parent(e1::Expr)
    Expr(:call,:module_parent,e1)
end
function mv(e1::Expr,o2::Any)
    Expr(:call,:mv,e1,expr(o2))
end
function mv(o1::Any,e2::Expr)
    Expr(:call,:mv,expr(o1),e2)
end
function mv(e1::Expr,e2::Expr)
    Expr(:call,:mv,e1,e2)
end
function names(e1::Expr,o2::Any)
    Expr(:call,:names,e1,expr(o2))
end
function names(o1::Any,e2::Expr)
    Expr(:call,:names,expr(o1),e2)
end
function names(e1::Expr,e2::Expr)
    Expr(:call,:names,e1,e2)
end
function names(e1::Expr,o2::Any,o3::Any)
    Expr(:call,:names,e1,expr(o2),expr(o3))
end
function names(o1::Any,e2::Expr,o3::Any)
    Expr(:call,:names,expr(o1),e2,expr(o3))
end
function names(e1::Expr,e2::Expr,o3::Any)
    Expr(:call,:names,e1,e2,expr(o3))
end
function names(o1::Any,o2::Any,e3::Expr)
    Expr(:call,:names,expr(o1),expr(o2),e3)
end
function names(e1::Expr,o2::Any,e3::Expr)
    Expr(:call,:names,e1,expr(o2),e3)
end
function names(o1::Any,e2::Expr,e3::Expr)
    Expr(:call,:names,expr(o1),e2,e3)
end
function names(e1::Expr,e2::Expr,e3::Expr)
    Expr(:call,:names,e1,e2,e3)
end
function names(e1::Expr)
    Expr(:call,:names,e1)
end
function nb_available(e1::Expr)
    Expr(:call,:nb_available,e1)
end
function ndigits(e1::Expr,o2::Any)
    Expr(:call,:ndigits,e1,expr(o2))
end
function ndigits(o1::Any,e2::Expr)
    Expr(:call,:ndigits,expr(o1),e2)
end
function ndigits(e1::Expr,e2::Expr)
    Expr(:call,:ndigits,e1,e2)
end
function ndigits(e1::Expr)
    Expr(:call,:ndigits,e1)
end
function ndims(e1::Expr)
    Expr(:call,:ndims,e1)
end
function next(e1::Expr,o2::Any)
    Expr(:call,:next,e1,expr(o2))
end
function next(e1::Expr,e2::Expr)
    Expr(:call,:next,e1,e2)
end
function next(e1::Expr,o2::Any,o3::Any)
    Expr(:call,:next,e1,expr(o2),expr(o3))
end
function next(e1::Expr,e2::Expr,o3::Any)
    Expr(:call,:next,e1,e2,expr(o3))
end
function next(e1::Expr,o2::Any,e3::Expr)
    Expr(:call,:next,e1,expr(o2),e3)
end
function next(e1::Expr,e2::Expr,e3::Expr)
    Expr(:call,:next,e1,e2,e3)
end
function next(e1::Expr)
    Expr(:call,:next,e1)
end
function nextfloat(e1::Expr,o2::Any)
    Expr(:call,:nextfloat,e1,expr(o2))
end
function nextfloat(o1::Any,e2::Expr)
    Expr(:call,:nextfloat,expr(o1),e2)
end
function nextfloat(e1::Expr,e2::Expr)
    Expr(:call,:nextfloat,e1,e2)
end
function nextfloat(e1::Expr)
    Expr(:call,:nextfloat,e1)
end
function nextind(e1::Expr,o2::Any)
    Expr(:call,:nextind,e1,expr(o2))
end
function nextind(o1::Any,e2::Expr)
    Expr(:call,:nextind,expr(o1),e2)
end
function nextind(e1::Expr,e2::Expr)
    Expr(:call,:nextind,e1,e2)
end
function nextpow(e1::Expr,o2::Any)
    Expr(:call,:nextpow,e1,expr(o2))
end
function nextpow(o1::Any,e2::Expr)
    Expr(:call,:nextpow,expr(o1),e2)
end
function nextpow(e1::Expr,e2::Expr)
    Expr(:call,:nextpow,e1,e2)
end
function nextpow2(e1::Expr)
    Expr(:call,:nextpow2,e1)
end
function nextprod(e1::Expr,o2::Any)
    Expr(:call,:nextprod,e1,expr(o2))
end
function nextprod(e1::Expr,e2::Expr)
    Expr(:call,:nextprod,e1,e2)
end
function nnz(e1::Expr)
    Expr(:call,:nnz,e1)
end
function nonzeros(e1::Expr)
    Expr(:call,:nonzeros,e1)
end
function norm(e1::Expr,o2::Any)
    Expr(:call,:norm,e1,expr(o2))
end
function norm(o1::Any,e2::Expr)
    Expr(:call,:norm,expr(o1),e2)
end
function norm(e1::Expr,e2::Expr)
    Expr(:call,:norm,e1,e2)
end
function norm(e1::Expr)
    Expr(:call,:norm,e1)
end
function normalize(e1::Expr,o2::Any)
    Expr(:call,:normalize,e1,expr(o2))
end
function normalize(o1::Any,e2::Expr)
    Expr(:call,:normalize,expr(o1),e2)
end
function normalize(e1::Expr,e2::Expr)
    Expr(:call,:normalize,e1,e2)
end
function normalize(e1::Expr)
    Expr(:call,:normalize,e1)
end
function normalize!(e1::Expr,o2::Any)
    Expr(:call,:normalize!,e1,expr(o2))
end
function normalize!(o1::Any,e2::Expr)
    Expr(:call,:normalize!,expr(o1),e2)
end
function normalize!(e1::Expr,e2::Expr)
    Expr(:call,:normalize!,e1,e2)
end
function normalize!(e1::Expr)
    Expr(:call,:normalize!,e1)
end
function normalize_string(e1::Expr,o2::Any)
    Expr(:call,:normalize_string,e1,expr(o2))
end
function normalize_string(o1::Any,e2::Expr)
    Expr(:call,:normalize_string,expr(o1),e2)
end
function normalize_string(e1::Expr,e2::Expr)
    Expr(:call,:normalize_string,e1,e2)
end
function normalize_string(e1::Expr)
    Expr(:call,:normalize_string,e1)
end
function normpath(e1::Expr,o2::Any)
    Expr(:call,:normpath,e1,expr(o2))
end
function normpath(o1::Any,e2::Expr)
    Expr(:call,:normpath,expr(o1),e2)
end
function normpath(e1::Expr,e2::Expr)
    Expr(:call,:normpath,e1,e2)
end
function normpath(e1::Expr)
    Expr(:call,:normpath,e1)
end
function notify(e1::Expr,o2::Any,o3::Any,o4::Any)
    Expr(:call,:notify,e1,expr(o2),expr(o3),expr(o4))
end
function notify(e1::Expr,o2::Any,o3::Any,e4::Expr)
    Expr(:call,:notify,e1,expr(o2),expr(o3),e4)
end
function notify(e1::Expr,e2::Expr,o3::Any,o4::Any)
    Expr(:call,:notify,e1,e2,expr(o3),expr(o4))
end
function notify(e1::Expr,e2::Expr,o3::Any,e4::Expr)
    Expr(:call,:notify,e1,e2,expr(o3),e4)
end
function notify(e1::Expr,o2::Any,e3::Expr,o4::Any)
    Expr(:call,:notify,e1,expr(o2),e3,expr(o4))
end
function notify(e1::Expr,o2::Any,e3::Expr,e4::Expr)
    Expr(:call,:notify,e1,expr(o2),e3,e4)
end
function notify(e1::Expr,e2::Expr,e3::Expr,o4::Any)
    Expr(:call,:notify,e1,e2,e3,expr(o4))
end
function notify(e1::Expr,e2::Expr,e3::Expr,e4::Expr)
    Expr(:call,:notify,e1,e2,e3,e4)
end
function notify(e1::Expr,o2::Any)
    Expr(:call,:notify,e1,expr(o2))
end
function notify(e1::Expr,e2::Expr)
    Expr(:call,:notify,e1,e2)
end
function notify(e1::Expr)
    Expr(:call,:notify,e1)
end
function now(e1::Expr)
    Expr(:call,:now,e1)
end
function ntuple(o1::Any,e2::Expr)
    Expr(:call,:ntuple,expr(o1),e2)
end
function ntuple(e1::Expr,e2::Expr)
    Expr(:call,:ntuple,e1,e2)
end
function nullspace(e1::Expr)
    Expr(:call,:nullspace,e1)
end
function num(e1::Expr)
    Expr(:call,:num,e1)
end
function num2hex(e1::Expr)
    Expr(:call,:num2hex,e1)
end
function nworkers(e1::Expr)
    Expr(:call,:nworkers,e1)
end
function nzrange(e1::Expr,o2::Any)
    Expr(:call,:nzrange,e1,expr(o2))
end
function nzrange(o1::Any,e2::Expr)
    Expr(:call,:nzrange,expr(o1),e2)
end
function nzrange(e1::Expr,e2::Expr)
    Expr(:call,:nzrange,e1,e2)
end
function oct(e1::Expr,o2::Any)
    Expr(:call,:oct,e1,expr(o2))
end
function oct(o1::Any,e2::Expr)
    Expr(:call,:oct,expr(o1),e2)
end
function oct(e1::Expr,e2::Expr)
    Expr(:call,:oct,e1,e2)
end
function oct(e1::Expr,o2::Any,o3::Any)
    Expr(:call,:oct,e1,expr(o2),expr(o3))
end
function oct(o1::Any,e2::Expr,o3::Any)
    Expr(:call,:oct,expr(o1),e2,expr(o3))
end
function oct(e1::Expr,e2::Expr,o3::Any)
    Expr(:call,:oct,e1,e2,expr(o3))
end
function oct(o1::Any,o2::Any,e3::Expr)
    Expr(:call,:oct,expr(o1),expr(o2),e3)
end
function oct(e1::Expr,o2::Any,e3::Expr)
    Expr(:call,:oct,e1,expr(o2),e3)
end
function oct(o1::Any,e2::Expr,e3::Expr)
    Expr(:call,:oct,expr(o1),e2,e3)
end
function oct(e1::Expr,e2::Expr,e3::Expr)
    Expr(:call,:oct,e1,e2,e3)
end
function oct(e1::Expr)
    Expr(:call,:oct,e1)
end
function one(e1::Expr)
    Expr(:call,:one,e1)
end
function open(e1::Expr,o2::Any)
    Expr(:call,:open,e1,expr(o2))
end
function open(o1::Any,e2::Expr)
    Expr(:call,:open,expr(o1),e2)
end
function open(e1::Expr,e2::Expr)
    Expr(:call,:open,e1,e2)
end
function open(e1::Expr,o2::Any,o3::Any)
    Expr(:call,:open,e1,expr(o2),expr(o3))
end
function open(o1::Any,e2::Expr,o3::Any)
    Expr(:call,:open,expr(o1),e2,expr(o3))
end
function open(e1::Expr,e2::Expr,o3::Any)
    Expr(:call,:open,e1,e2,expr(o3))
end
function open(o1::Any,o2::Any,e3::Expr)
    Expr(:call,:open,expr(o1),expr(o2),e3)
end
function open(e1::Expr,o2::Any,e3::Expr)
    Expr(:call,:open,e1,expr(o2),e3)
end
function open(o1::Any,e2::Expr,e3::Expr)
    Expr(:call,:open,expr(o1),e2,e3)
end
function open(e1::Expr,e2::Expr,e3::Expr)
    Expr(:call,:open,e1,e2,e3)
end
function open(e1::Expr,o2::Any,o3::Any,o4::Any,o5::Any,o6::Any)
    Expr(:call,:open,e1,expr(o2),expr(o3),expr(o4),expr(o5),expr(o6))
end
function open(o1::Any,e2::Expr,o3::Any,o4::Any,o5::Any,o6::Any)
    Expr(:call,:open,expr(o1),e2,expr(o3),expr(o4),expr(o5),expr(o6))
end
function open(e1::Expr,e2::Expr,o3::Any,o4::Any,o5::Any,o6::Any)
    Expr(:call,:open,e1,e2,expr(o3),expr(o4),expr(o5),expr(o6))
end
function open(o1::Any,o2::Any,e3::Expr,o4::Any,o5::Any,o6::Any)
    Expr(:call,:open,expr(o1),expr(o2),e3,expr(o4),expr(o5),expr(o6))
end
function open(e1::Expr,o2::Any,e3::Expr,o4::Any,o5::Any,o6::Any)
    Expr(:call,:open,e1,expr(o2),e3,expr(o4),expr(o5),expr(o6))
end
function open(o1::Any,e2::Expr,e3::Expr,o4::Any,o5::Any,o6::Any)
    Expr(:call,:open,expr(o1),e2,e3,expr(o4),expr(o5),expr(o6))
end
function open(e1::Expr,e2::Expr,e3::Expr,o4::Any,o5::Any,o6::Any)
    Expr(:call,:open,e1,e2,e3,expr(o4),expr(o5),expr(o6))
end
function open(o1::Any,o2::Any,o3::Any,e4::Expr,o5::Any,o6::Any)
    Expr(:call,:open,expr(o1),expr(o2),expr(o3),e4,expr(o5),expr(o6))
end
function open(e1::Expr,o2::Any,o3::Any,e4::Expr,o5::Any,o6::Any)
    Expr(:call,:open,e1,expr(o2),expr(o3),e4,expr(o5),expr(o6))
end
function open(o1::Any,e2::Expr,o3::Any,e4::Expr,o5::Any,o6::Any)
    Expr(:call,:open,expr(o1),e2,expr(o3),e4,expr(o5),expr(o6))
end
function open(e1::Expr,e2::Expr,o3::Any,e4::Expr,o5::Any,o6::Any)
    Expr(:call,:open,e1,e2,expr(o3),e4,expr(o5),expr(o6))
end
function open(o1::Any,o2::Any,e3::Expr,e4::Expr,o5::Any,o6::Any)
    Expr(:call,:open,expr(o1),expr(o2),e3,e4,expr(o5),expr(o6))
end
function open(e1::Expr,o2::Any,e3::Expr,e4::Expr,o5::Any,o6::Any)
    Expr(:call,:open,e1,expr(o2),e3,e4,expr(o5),expr(o6))
end
function open(o1::Any,e2::Expr,e3::Expr,e4::Expr,o5::Any,o6::Any)
    Expr(:call,:open,expr(o1),e2,e3,e4,expr(o5),expr(o6))
end
function open(e1::Expr,e2::Expr,e3::Expr,e4::Expr,o5::Any,o6::Any)
    Expr(:call,:open,e1,e2,e3,e4,expr(o5),expr(o6))
end
function open(o1::Any,o2::Any,o3::Any,o4::Any,e5::Expr,o6::Any)
    Expr(:call,:open,expr(o1),expr(o2),expr(o3),expr(o4),e5,expr(o6))
end
function open(e1::Expr,o2::Any,o3::Any,o4::Any,e5::Expr,o6::Any)
    Expr(:call,:open,e1,expr(o2),expr(o3),expr(o4),e5,expr(o6))
end
function open(o1::Any,e2::Expr,o3::Any,o4::Any,e5::Expr,o6::Any)
    Expr(:call,:open,expr(o1),e2,expr(o3),expr(o4),e5,expr(o6))
end
function open(e1::Expr,e2::Expr,o3::Any,o4::Any,e5::Expr,o6::Any)
    Expr(:call,:open,e1,e2,expr(o3),expr(o4),e5,expr(o6))
end
function open(o1::Any,o2::Any,e3::Expr,o4::Any,e5::Expr,o6::Any)
    Expr(:call,:open,expr(o1),expr(o2),e3,expr(o4),e5,expr(o6))
end
function open(e1::Expr,o2::Any,e3::Expr,o4::Any,e5::Expr,o6::Any)
    Expr(:call,:open,e1,expr(o2),e3,expr(o4),e5,expr(o6))
end
function open(o1::Any,e2::Expr,e3::Expr,o4::Any,e5::Expr,o6::Any)
    Expr(:call,:open,expr(o1),e2,e3,expr(o4),e5,expr(o6))
end
function open(e1::Expr,e2::Expr,e3::Expr,o4::Any,e5::Expr,o6::Any)
    Expr(:call,:open,e1,e2,e3,expr(o4),e5,expr(o6))
end
function open(o1::Any,o2::Any,o3::Any,e4::Expr,e5::Expr,o6::Any)
    Expr(:call,:open,expr(o1),expr(o2),expr(o3),e4,e5,expr(o6))
end
function open(e1::Expr,o2::Any,o3::Any,e4::Expr,e5::Expr,o6::Any)
    Expr(:call,:open,e1,expr(o2),expr(o3),e4,e5,expr(o6))
end
function open(o1::Any,e2::Expr,o3::Any,e4::Expr,e5::Expr,o6::Any)
    Expr(:call,:open,expr(o1),e2,expr(o3),e4,e5,expr(o6))
end
function open(e1::Expr,e2::Expr,o3::Any,e4::Expr,e5::Expr,o6::Any)
    Expr(:call,:open,e1,e2,expr(o3),e4,e5,expr(o6))
end
function open(o1::Any,o2::Any,e3::Expr,e4::Expr,e5::Expr,o6::Any)
    Expr(:call,:open,expr(o1),expr(o2),e3,e4,e5,expr(o6))
end
function open(e1::Expr,o2::Any,e3::Expr,e4::Expr,e5::Expr,o6::Any)
    Expr(:call,:open,e1,expr(o2),e3,e4,e5,expr(o6))
end
function open(o1::Any,e2::Expr,e3::Expr,e4::Expr,e5::Expr,o6::Any)
    Expr(:call,:open,expr(o1),e2,e3,e4,e5,expr(o6))
end
function open(e1::Expr,e2::Expr,e3::Expr,e4::Expr,e5::Expr,o6::Any)
    Expr(:call,:open,e1,e2,e3,e4,e5,expr(o6))
end
function open(o1::Any,o2::Any,o3::Any,o4::Any,o5::Any,e6::Expr)
    Expr(:call,:open,expr(o1),expr(o2),expr(o3),expr(o4),expr(o5),e6)
end
function open(e1::Expr,o2::Any,o3::Any,o4::Any,o5::Any,e6::Expr)
    Expr(:call,:open,e1,expr(o2),expr(o3),expr(o4),expr(o5),e6)
end
function open(o1::Any,e2::Expr,o3::Any,o4::Any,o5::Any,e6::Expr)
    Expr(:call,:open,expr(o1),e2,expr(o3),expr(o4),expr(o5),e6)
end
function open(e1::Expr,e2::Expr,o3::Any,o4::Any,o5::Any,e6::Expr)
    Expr(:call,:open,e1,e2,expr(o3),expr(o4),expr(o5),e6)
end
function open(o1::Any,o2::Any,e3::Expr,o4::Any,o5::Any,e6::Expr)
    Expr(:call,:open,expr(o1),expr(o2),e3,expr(o4),expr(o5),e6)
end
function open(e1::Expr,o2::Any,e3::Expr,o4::Any,o5::Any,e6::Expr)
    Expr(:call,:open,e1,expr(o2),e3,expr(o4),expr(o5),e6)
end
function open(o1::Any,e2::Expr,e3::Expr,o4::Any,o5::Any,e6::Expr)
    Expr(:call,:open,expr(o1),e2,e3,expr(o4),expr(o5),e6)
end
function open(e1::Expr,e2::Expr,e3::Expr,o4::Any,o5::Any,e6::Expr)
    Expr(:call,:open,e1,e2,e3,expr(o4),expr(o5),e6)
end
function open(o1::Any,o2::Any,o3::Any,e4::Expr,o5::Any,e6::Expr)
    Expr(:call,:open,expr(o1),expr(o2),expr(o3),e4,expr(o5),e6)
end
function open(e1::Expr,o2::Any,o3::Any,e4::Expr,o5::Any,e6::Expr)
    Expr(:call,:open,e1,expr(o2),expr(o3),e4,expr(o5),e6)
end
function open(o1::Any,e2::Expr,o3::Any,e4::Expr,o5::Any,e6::Expr)
    Expr(:call,:open,expr(o1),e2,expr(o3),e4,expr(o5),e6)
end
function open(e1::Expr,e2::Expr,o3::Any,e4::Expr,o5::Any,e6::Expr)
    Expr(:call,:open,e1,e2,expr(o3),e4,expr(o5),e6)
end
function open(o1::Any,o2::Any,e3::Expr,e4::Expr,o5::Any,e6::Expr)
    Expr(:call,:open,expr(o1),expr(o2),e3,e4,expr(o5),e6)
end
function open(e1::Expr,o2::Any,e3::Expr,e4::Expr,o5::Any,e6::Expr)
    Expr(:call,:open,e1,expr(o2),e3,e4,expr(o5),e6)
end
function open(o1::Any,e2::Expr,e3::Expr,e4::Expr,o5::Any,e6::Expr)
    Expr(:call,:open,expr(o1),e2,e3,e4,expr(o5),e6)
end
function open(e1::Expr,e2::Expr,e3::Expr,e4::Expr,o5::Any,e6::Expr)
    Expr(:call,:open,e1,e2,e3,e4,expr(o5),e6)
end
function open(o1::Any,o2::Any,o3::Any,o4::Any,e5::Expr,e6::Expr)
    Expr(:call,:open,expr(o1),expr(o2),expr(o3),expr(o4),e5,e6)
end
function open(e1::Expr,o2::Any,o3::Any,o4::Any,e5::Expr,e6::Expr)
    Expr(:call,:open,e1,expr(o2),expr(o3),expr(o4),e5,e6)
end
function open(o1::Any,e2::Expr,o3::Any,o4::Any,e5::Expr,e6::Expr)
    Expr(:call,:open,expr(o1),e2,expr(o3),expr(o4),e5,e6)
end
function open(e1::Expr,e2::Expr,o3::Any,o4::Any,e5::Expr,e6::Expr)
    Expr(:call,:open,e1,e2,expr(o3),expr(o4),e5,e6)
end
function open(o1::Any,o2::Any,e3::Expr,o4::Any,e5::Expr,e6::Expr)
    Expr(:call,:open,expr(o1),expr(o2),e3,expr(o4),e5,e6)
end
function open(e1::Expr,o2::Any,e3::Expr,o4::Any,e5::Expr,e6::Expr)
    Expr(:call,:open,e1,expr(o2),e3,expr(o4),e5,e6)
end
function open(o1::Any,e2::Expr,e3::Expr,o4::Any,e5::Expr,e6::Expr)
    Expr(:call,:open,expr(o1),e2,e3,expr(o4),e5,e6)
end
function open(e1::Expr,e2::Expr,e3::Expr,o4::Any,e5::Expr,e6::Expr)
    Expr(:call,:open,e1,e2,e3,expr(o4),e5,e6)
end
function open(o1::Any,o2::Any,o3::Any,e4::Expr,e5::Expr,e6::Expr)
    Expr(:call,:open,expr(o1),expr(o2),expr(o3),e4,e5,e6)
end
function open(e1::Expr,o2::Any,o3::Any,e4::Expr,e5::Expr,e6::Expr)
    Expr(:call,:open,e1,expr(o2),expr(o3),e4,e5,e6)
end
function open(o1::Any,e2::Expr,o3::Any,e4::Expr,e5::Expr,e6::Expr)
    Expr(:call,:open,expr(o1),e2,expr(o3),e4,e5,e6)
end
function open(e1::Expr,e2::Expr,o3::Any,e4::Expr,e5::Expr,e6::Expr)
    Expr(:call,:open,e1,e2,expr(o3),e4,e5,e6)
end
function open(o1::Any,o2::Any,e3::Expr,e4::Expr,e5::Expr,e6::Expr)
    Expr(:call,:open,expr(o1),expr(o2),e3,e4,e5,e6)
end
function open(e1::Expr,o2::Any,e3::Expr,e4::Expr,e5::Expr,e6::Expr)
    Expr(:call,:open,e1,expr(o2),e3,e4,e5,e6)
end
function open(o1::Any,e2::Expr,e3::Expr,e4::Expr,e5::Expr,e6::Expr)
    Expr(:call,:open,expr(o1),e2,e3,e4,e5,e6)
end
function open(e1::Expr,e2::Expr,e3::Expr,e4::Expr,e5::Expr,e6::Expr)
    Expr(:call,:open,e1,e2,e3,e4,e5,e6)
end
function open(e1::Expr)
    Expr(:call,:open,e1)
end
function ordschur(e1::Expr,o2::Any)
    Expr(:call,:ordschur,e1,expr(o2))
end
function ordschur(o1::Any,e2::Expr)
    Expr(:call,:ordschur,expr(o1),e2)
end
function ordschur(e1::Expr,e2::Expr)
    Expr(:call,:ordschur,e1,e2)
end
function ordschur(e1::Expr,o2::Any,o3::Any)
    Expr(:call,:ordschur,e1,expr(o2),expr(o3))
end
function ordschur(o1::Any,e2::Expr,o3::Any)
    Expr(:call,:ordschur,expr(o1),e2,expr(o3))
end
function ordschur(e1::Expr,e2::Expr,o3::Any)
    Expr(:call,:ordschur,e1,e2,expr(o3))
end
function ordschur(o1::Any,o2::Any,e3::Expr)
    Expr(:call,:ordschur,expr(o1),expr(o2),e3)
end
function ordschur(e1::Expr,o2::Any,e3::Expr)
    Expr(:call,:ordschur,e1,expr(o2),e3)
end
function ordschur(o1::Any,e2::Expr,e3::Expr)
    Expr(:call,:ordschur,expr(o1),e2,e3)
end
function ordschur(e1::Expr,e2::Expr,e3::Expr)
    Expr(:call,:ordschur,e1,e2,e3)
end
function ordschur(e1::Expr,o2::Any,o3::Any,o4::Any,o5::Any)
    Expr(:call,:ordschur,e1,expr(o2),expr(o3),expr(o4),expr(o5))
end
function ordschur(o1::Any,e2::Expr,o3::Any,o4::Any,o5::Any)
    Expr(:call,:ordschur,expr(o1),e2,expr(o3),expr(o4),expr(o5))
end
function ordschur(e1::Expr,e2::Expr,o3::Any,o4::Any,o5::Any)
    Expr(:call,:ordschur,e1,e2,expr(o3),expr(o4),expr(o5))
end
function ordschur(o1::Any,o2::Any,e3::Expr,o4::Any,o5::Any)
    Expr(:call,:ordschur,expr(o1),expr(o2),e3,expr(o4),expr(o5))
end
function ordschur(e1::Expr,o2::Any,e3::Expr,o4::Any,o5::Any)
    Expr(:call,:ordschur,e1,expr(o2),e3,expr(o4),expr(o5))
end
function ordschur(o1::Any,e2::Expr,e3::Expr,o4::Any,o5::Any)
    Expr(:call,:ordschur,expr(o1),e2,e3,expr(o4),expr(o5))
end
function ordschur(e1::Expr,e2::Expr,e3::Expr,o4::Any,o5::Any)
    Expr(:call,:ordschur,e1,e2,e3,expr(o4),expr(o5))
end
function ordschur(o1::Any,o2::Any,o3::Any,e4::Expr,o5::Any)
    Expr(:call,:ordschur,expr(o1),expr(o2),expr(o3),e4,expr(o5))
end
function ordschur(e1::Expr,o2::Any,o3::Any,e4::Expr,o5::Any)
    Expr(:call,:ordschur,e1,expr(o2),expr(o3),e4,expr(o5))
end
function ordschur(o1::Any,e2::Expr,o3::Any,e4::Expr,o5::Any)
    Expr(:call,:ordschur,expr(o1),e2,expr(o3),e4,expr(o5))
end
function ordschur(e1::Expr,e2::Expr,o3::Any,e4::Expr,o5::Any)
    Expr(:call,:ordschur,e1,e2,expr(o3),e4,expr(o5))
end
function ordschur(o1::Any,o2::Any,e3::Expr,e4::Expr,o5::Any)
    Expr(:call,:ordschur,expr(o1),expr(o2),e3,e4,expr(o5))
end
function ordschur(e1::Expr,o2::Any,e3::Expr,e4::Expr,o5::Any)
    Expr(:call,:ordschur,e1,expr(o2),e3,e4,expr(o5))
end
function ordschur(o1::Any,e2::Expr,e3::Expr,e4::Expr,o5::Any)
    Expr(:call,:ordschur,expr(o1),e2,e3,e4,expr(o5))
end
function ordschur(e1::Expr,e2::Expr,e3::Expr,e4::Expr,o5::Any)
    Expr(:call,:ordschur,e1,e2,e3,e4,expr(o5))
end
function ordschur(o1::Any,o2::Any,o3::Any,o4::Any,e5::Expr)
    Expr(:call,:ordschur,expr(o1),expr(o2),expr(o3),expr(o4),e5)
end
function ordschur(e1::Expr,o2::Any,o3::Any,o4::Any,e5::Expr)
    Expr(:call,:ordschur,e1,expr(o2),expr(o3),expr(o4),e5)
end
function ordschur(o1::Any,e2::Expr,o3::Any,o4::Any,e5::Expr)
    Expr(:call,:ordschur,expr(o1),e2,expr(o3),expr(o4),e5)
end
function ordschur(e1::Expr,e2::Expr,o3::Any,o4::Any,e5::Expr)
    Expr(:call,:ordschur,e1,e2,expr(o3),expr(o4),e5)
end
function ordschur(o1::Any,o2::Any,e3::Expr,o4::Any,e5::Expr)
    Expr(:call,:ordschur,expr(o1),expr(o2),e3,expr(o4),e5)
end
function ordschur(e1::Expr,o2::Any,e3::Expr,o4::Any,e5::Expr)
    Expr(:call,:ordschur,e1,expr(o2),e3,expr(o4),e5)
end
function ordschur(o1::Any,e2::Expr,e3::Expr,o4::Any,e5::Expr)
    Expr(:call,:ordschur,expr(o1),e2,e3,expr(o4),e5)
end
function ordschur(e1::Expr,e2::Expr,e3::Expr,o4::Any,e5::Expr)
    Expr(:call,:ordschur,e1,e2,e3,expr(o4),e5)
end
function ordschur(o1::Any,o2::Any,o3::Any,e4::Expr,e5::Expr)
    Expr(:call,:ordschur,expr(o1),expr(o2),expr(o3),e4,e5)
end
function ordschur(e1::Expr,o2::Any,o3::Any,e4::Expr,e5::Expr)
    Expr(:call,:ordschur,e1,expr(o2),expr(o3),e4,e5)
end
function ordschur(o1::Any,e2::Expr,o3::Any,e4::Expr,e5::Expr)
    Expr(:call,:ordschur,expr(o1),e2,expr(o3),e4,e5)
end
function ordschur(e1::Expr,e2::Expr,o3::Any,e4::Expr,e5::Expr)
    Expr(:call,:ordschur,e1,e2,expr(o3),e4,e5)
end
function ordschur(o1::Any,o2::Any,e3::Expr,e4::Expr,e5::Expr)
    Expr(:call,:ordschur,expr(o1),expr(o2),e3,e4,e5)
end
function ordschur(e1::Expr,o2::Any,e3::Expr,e4::Expr,e5::Expr)
    Expr(:call,:ordschur,e1,expr(o2),e3,e4,e5)
end
function ordschur(o1::Any,e2::Expr,e3::Expr,e4::Expr,e5::Expr)
    Expr(:call,:ordschur,expr(o1),e2,e3,e4,e5)
end
function ordschur(e1::Expr,e2::Expr,e3::Expr,e4::Expr,e5::Expr)
    Expr(:call,:ordschur,e1,e2,e3,e4,e5)
end
function ordschur!(e1::Expr,o2::Any)
    Expr(:call,:ordschur!,e1,expr(o2))
end
function ordschur!(o1::Any,e2::Expr)
    Expr(:call,:ordschur!,expr(o1),e2)
end
function ordschur!(e1::Expr,e2::Expr)
    Expr(:call,:ordschur!,e1,e2)
end
function ordschur!(e1::Expr,o2::Any,o3::Any)
    Expr(:call,:ordschur!,e1,expr(o2),expr(o3))
end
function ordschur!(o1::Any,e2::Expr,o3::Any)
    Expr(:call,:ordschur!,expr(o1),e2,expr(o3))
end
function ordschur!(e1::Expr,e2::Expr,o3::Any)
    Expr(:call,:ordschur!,e1,e2,expr(o3))
end
function ordschur!(o1::Any,o2::Any,e3::Expr)
    Expr(:call,:ordschur!,expr(o1),expr(o2),e3)
end
function ordschur!(e1::Expr,o2::Any,e3::Expr)
    Expr(:call,:ordschur!,e1,expr(o2),e3)
end
function ordschur!(o1::Any,e2::Expr,e3::Expr)
    Expr(:call,:ordschur!,expr(o1),e2,e3)
end
function ordschur!(e1::Expr,e2::Expr,e3::Expr)
    Expr(:call,:ordschur!,e1,e2,e3)
end
function ordschur!(e1::Expr,o2::Any,o3::Any,o4::Any,o5::Any)
    Expr(:call,:ordschur!,e1,expr(o2),expr(o3),expr(o4),expr(o5))
end
function ordschur!(o1::Any,e2::Expr,o3::Any,o4::Any,o5::Any)
    Expr(:call,:ordschur!,expr(o1),e2,expr(o3),expr(o4),expr(o5))
end
function ordschur!(e1::Expr,e2::Expr,o3::Any,o4::Any,o5::Any)
    Expr(:call,:ordschur!,e1,e2,expr(o3),expr(o4),expr(o5))
end
function ordschur!(o1::Any,o2::Any,e3::Expr,o4::Any,o5::Any)
    Expr(:call,:ordschur!,expr(o1),expr(o2),e3,expr(o4),expr(o5))
end
function ordschur!(e1::Expr,o2::Any,e3::Expr,o4::Any,o5::Any)
    Expr(:call,:ordschur!,e1,expr(o2),e3,expr(o4),expr(o5))
end
function ordschur!(o1::Any,e2::Expr,e3::Expr,o4::Any,o5::Any)
    Expr(:call,:ordschur!,expr(o1),e2,e3,expr(o4),expr(o5))
end
function ordschur!(e1::Expr,e2::Expr,e3::Expr,o4::Any,o5::Any)
    Expr(:call,:ordschur!,e1,e2,e3,expr(o4),expr(o5))
end
function ordschur!(o1::Any,o2::Any,o3::Any,e4::Expr,o5::Any)
    Expr(:call,:ordschur!,expr(o1),expr(o2),expr(o3),e4,expr(o5))
end
function ordschur!(e1::Expr,o2::Any,o3::Any,e4::Expr,o5::Any)
    Expr(:call,:ordschur!,e1,expr(o2),expr(o3),e4,expr(o5))
end
function ordschur!(o1::Any,e2::Expr,o3::Any,e4::Expr,o5::Any)
    Expr(:call,:ordschur!,expr(o1),e2,expr(o3),e4,expr(o5))
end
function ordschur!(e1::Expr,e2::Expr,o3::Any,e4::Expr,o5::Any)
    Expr(:call,:ordschur!,e1,e2,expr(o3),e4,expr(o5))
end
function ordschur!(o1::Any,o2::Any,e3::Expr,e4::Expr,o5::Any)
    Expr(:call,:ordschur!,expr(o1),expr(o2),e3,e4,expr(o5))
end
function ordschur!(e1::Expr,o2::Any,e3::Expr,e4::Expr,o5::Any)
    Expr(:call,:ordschur!,e1,expr(o2),e3,e4,expr(o5))
end
function ordschur!(o1::Any,e2::Expr,e3::Expr,e4::Expr,o5::Any)
    Expr(:call,:ordschur!,expr(o1),e2,e3,e4,expr(o5))
end
function ordschur!(e1::Expr,e2::Expr,e3::Expr,e4::Expr,o5::Any)
    Expr(:call,:ordschur!,e1,e2,e3,e4,expr(o5))
end
function ordschur!(o1::Any,o2::Any,o3::Any,o4::Any,e5::Expr)
    Expr(:call,:ordschur!,expr(o1),expr(o2),expr(o3),expr(o4),e5)
end
function ordschur!(e1::Expr,o2::Any,o3::Any,o4::Any,e5::Expr)
    Expr(:call,:ordschur!,e1,expr(o2),expr(o3),expr(o4),e5)
end
function ordschur!(o1::Any,e2::Expr,o3::Any,o4::Any,e5::Expr)
    Expr(:call,:ordschur!,expr(o1),e2,expr(o3),expr(o4),e5)
end
function ordschur!(e1::Expr,e2::Expr,o3::Any,o4::Any,e5::Expr)
    Expr(:call,:ordschur!,e1,e2,expr(o3),expr(o4),e5)
end
function ordschur!(o1::Any,o2::Any,e3::Expr,o4::Any,e5::Expr)
    Expr(:call,:ordschur!,expr(o1),expr(o2),e3,expr(o4),e5)
end
function ordschur!(e1::Expr,o2::Any,e3::Expr,o4::Any,e5::Expr)
    Expr(:call,:ordschur!,e1,expr(o2),e3,expr(o4),e5)
end
function ordschur!(o1::Any,e2::Expr,e3::Expr,o4::Any,e5::Expr)
    Expr(:call,:ordschur!,expr(o1),e2,e3,expr(o4),e5)
end
function ordschur!(e1::Expr,e2::Expr,e3::Expr,o4::Any,e5::Expr)
    Expr(:call,:ordschur!,e1,e2,e3,expr(o4),e5)
end
function ordschur!(o1::Any,o2::Any,o3::Any,e4::Expr,e5::Expr)
    Expr(:call,:ordschur!,expr(o1),expr(o2),expr(o3),e4,e5)
end
function ordschur!(e1::Expr,o2::Any,o3::Any,e4::Expr,e5::Expr)
    Expr(:call,:ordschur!,e1,expr(o2),expr(o3),e4,e5)
end
function ordschur!(o1::Any,e2::Expr,o3::Any,e4::Expr,e5::Expr)
    Expr(:call,:ordschur!,expr(o1),e2,expr(o3),e4,e5)
end
function ordschur!(e1::Expr,e2::Expr,o3::Any,e4::Expr,e5::Expr)
    Expr(:call,:ordschur!,e1,e2,expr(o3),e4,e5)
end
function ordschur!(o1::Any,o2::Any,e3::Expr,e4::Expr,e5::Expr)
    Expr(:call,:ordschur!,expr(o1),expr(o2),e3,e4,e5)
end
function ordschur!(e1::Expr,o2::Any,e3::Expr,e4::Expr,e5::Expr)
    Expr(:call,:ordschur!,e1,expr(o2),e3,e4,e5)
end
function ordschur!(o1::Any,e2::Expr,e3::Expr,e4::Expr,e5::Expr)
    Expr(:call,:ordschur!,expr(o1),e2,e3,e4,e5)
end
function ordschur!(e1::Expr,e2::Expr,e3::Expr,e4::Expr,e5::Expr)
    Expr(:call,:ordschur!,e1,e2,e3,e4,e5)
end
function parent(e1::Expr)
    Expr(:call,:parent,e1)
end
function parentindexes(e1::Expr)
    Expr(:call,:parentindexes,e1)
end
function parse(e1::Expr,o2::Any)
    Expr(:call,:parse,e1,expr(o2))
end
function parse(o1::Any,e2::Expr)
    Expr(:call,:parse,expr(o1),e2)
end
function parse(e1::Expr,e2::Expr)
    Expr(:call,:parse,e1,e2)
end
function parse(e1::Expr,o2::Any,o3::Any)
    Expr(:call,:parse,e1,expr(o2),expr(o3))
end
function parse(o1::Any,e2::Expr,o3::Any)
    Expr(:call,:parse,expr(o1),e2,expr(o3))
end
function parse(e1::Expr,e2::Expr,o3::Any)
    Expr(:call,:parse,e1,e2,expr(o3))
end
function parse(o1::Any,o2::Any,e3::Expr)
    Expr(:call,:parse,expr(o1),expr(o2),e3)
end
function parse(e1::Expr,o2::Any,e3::Expr)
    Expr(:call,:parse,e1,expr(o2),e3)
end
function parse(o1::Any,e2::Expr,e3::Expr)
    Expr(:call,:parse,expr(o1),e2,e3)
end
function parse(e1::Expr,e2::Expr,e3::Expr)
    Expr(:call,:parse,e1,e2,e3)
end
function parse(e1::Expr)
    Expr(:call,:parse,e1)
end
function parseip(e1::Expr)
    Expr(:call,:parseip,e1)
end
function peakflops(e1::Expr)
    Expr(:call,:peakflops,e1)
end
function permute(e1::Expr,o2::Any,o3::Any)
    Expr(:call,:permute,e1,expr(o2),expr(o3))
end
function permute(o1::Any,e2::Expr,o3::Any)
    Expr(:call,:permute,expr(o1),e2,expr(o3))
end
function permute(e1::Expr,e2::Expr,o3::Any)
    Expr(:call,:permute,e1,e2,expr(o3))
end
function permute(o1::Any,o2::Any,e3::Expr)
    Expr(:call,:permute,expr(o1),expr(o2),e3)
end
function permute(e1::Expr,o2::Any,e3::Expr)
    Expr(:call,:permute,e1,expr(o2),e3)
end
function permute(o1::Any,e2::Expr,e3::Expr)
    Expr(:call,:permute,expr(o1),e2,e3)
end
function permute(e1::Expr,e2::Expr,e3::Expr)
    Expr(:call,:permute,e1,e2,e3)
end
function permute!(e1::Expr,o2::Any,o3::Any,o4::Any)
    Expr(:call,:permute!,e1,expr(o2),expr(o3),expr(o4))
end
function permute!(o1::Any,e2::Expr,o3::Any,o4::Any)
    Expr(:call,:permute!,expr(o1),e2,expr(o3),expr(o4))
end
function permute!(e1::Expr,e2::Expr,o3::Any,o4::Any)
    Expr(:call,:permute!,e1,e2,expr(o3),expr(o4))
end
function permute!(o1::Any,o2::Any,e3::Expr,o4::Any)
    Expr(:call,:permute!,expr(o1),expr(o2),e3,expr(o4))
end
function permute!(e1::Expr,o2::Any,e3::Expr,o4::Any)
    Expr(:call,:permute!,e1,expr(o2),e3,expr(o4))
end
function permute!(o1::Any,e2::Expr,e3::Expr,o4::Any)
    Expr(:call,:permute!,expr(o1),e2,e3,expr(o4))
end
function permute!(e1::Expr,e2::Expr,e3::Expr,o4::Any)
    Expr(:call,:permute!,e1,e2,e3,expr(o4))
end
function permute!(o1::Any,o2::Any,o3::Any,e4::Expr)
    Expr(:call,:permute!,expr(o1),expr(o2),expr(o3),e4)
end
function permute!(e1::Expr,o2::Any,o3::Any,e4::Expr)
    Expr(:call,:permute!,e1,expr(o2),expr(o3),e4)
end
function permute!(o1::Any,e2::Expr,o3::Any,e4::Expr)
    Expr(:call,:permute!,expr(o1),e2,expr(o3),e4)
end
function permute!(e1::Expr,e2::Expr,o3::Any,e4::Expr)
    Expr(:call,:permute!,e1,e2,expr(o3),e4)
end
function permute!(o1::Any,o2::Any,e3::Expr,e4::Expr)
    Expr(:call,:permute!,expr(o1),expr(o2),e3,e4)
end
function permute!(e1::Expr,o2::Any,e3::Expr,e4::Expr)
    Expr(:call,:permute!,e1,expr(o2),e3,e4)
end
function permute!(o1::Any,e2::Expr,e3::Expr,e4::Expr)
    Expr(:call,:permute!,expr(o1),e2,e3,e4)
end
function permute!(e1::Expr,e2::Expr,e3::Expr,e4::Expr)
    Expr(:call,:permute!,e1,e2,e3,e4)
end
function permute!(o1::Any,e2::Expr)
    Expr(:call,:permute!,expr(o1),e2)
end
function permute!(e1::Expr,e2::Expr)
    Expr(:call,:permute!,e1,e2)
end
function permute!(e1::Expr,o2::Any,o3::Any)
    Expr(:call,:permute!,e1,expr(o2),expr(o3))
end
function permute!(o1::Any,e2::Expr,o3::Any)
    Expr(:call,:permute!,expr(o1),e2,expr(o3))
end
function permute!(e1::Expr,e2::Expr,o3::Any)
    Expr(:call,:permute!,e1,e2,expr(o3))
end
function permute!(o1::Any,o2::Any,e3::Expr)
    Expr(:call,:permute!,expr(o1),expr(o2),e3)
end
function permute!(e1::Expr,o2::Any,e3::Expr)
    Expr(:call,:permute!,e1,expr(o2),e3)
end
function permute!(o1::Any,e2::Expr,e3::Expr)
    Expr(:call,:permute!,expr(o1),e2,e3)
end
function permute!(e1::Expr,e2::Expr,e3::Expr)
    Expr(:call,:permute!,e1,e2,e3)
end
function permute!(e1::Expr,o2::Any,o3::Any,o4::Any,o5::Any)
    Expr(:call,:permute!,e1,expr(o2),expr(o3),expr(o4),expr(o5))
end
function permute!(o1::Any,e2::Expr,o3::Any,o4::Any,o5::Any)
    Expr(:call,:permute!,expr(o1),e2,expr(o3),expr(o4),expr(o5))
end
function permute!(e1::Expr,e2::Expr,o3::Any,o4::Any,o5::Any)
    Expr(:call,:permute!,e1,e2,expr(o3),expr(o4),expr(o5))
end
function permute!(o1::Any,o2::Any,e3::Expr,o4::Any,o5::Any)
    Expr(:call,:permute!,expr(o1),expr(o2),e3,expr(o4),expr(o5))
end
function permute!(e1::Expr,o2::Any,e3::Expr,o4::Any,o5::Any)
    Expr(:call,:permute!,e1,expr(o2),e3,expr(o4),expr(o5))
end
function permute!(o1::Any,e2::Expr,e3::Expr,o4::Any,o5::Any)
    Expr(:call,:permute!,expr(o1),e2,e3,expr(o4),expr(o5))
end
function permute!(e1::Expr,e2::Expr,e3::Expr,o4::Any,o5::Any)
    Expr(:call,:permute!,e1,e2,e3,expr(o4),expr(o5))
end
function permute!(o1::Any,o2::Any,o3::Any,e4::Expr,o5::Any)
    Expr(:call,:permute!,expr(o1),expr(o2),expr(o3),e4,expr(o5))
end
function permute!(e1::Expr,o2::Any,o3::Any,e4::Expr,o5::Any)
    Expr(:call,:permute!,e1,expr(o2),expr(o3),e4,expr(o5))
end
function permute!(o1::Any,e2::Expr,o3::Any,e4::Expr,o5::Any)
    Expr(:call,:permute!,expr(o1),e2,expr(o3),e4,expr(o5))
end
function permute!(e1::Expr,e2::Expr,o3::Any,e4::Expr,o5::Any)
    Expr(:call,:permute!,e1,e2,expr(o3),e4,expr(o5))
end
function permute!(o1::Any,o2::Any,e3::Expr,e4::Expr,o5::Any)
    Expr(:call,:permute!,expr(o1),expr(o2),e3,e4,expr(o5))
end
function permute!(e1::Expr,o2::Any,e3::Expr,e4::Expr,o5::Any)
    Expr(:call,:permute!,e1,expr(o2),e3,e4,expr(o5))
end
function permute!(o1::Any,e2::Expr,e3::Expr,e4::Expr,o5::Any)
    Expr(:call,:permute!,expr(o1),e2,e3,e4,expr(o5))
end
function permute!(e1::Expr,e2::Expr,e3::Expr,e4::Expr,o5::Any)
    Expr(:call,:permute!,e1,e2,e3,e4,expr(o5))
end
function permute!(o1::Any,o2::Any,o3::Any,o4::Any,e5::Expr)
    Expr(:call,:permute!,expr(o1),expr(o2),expr(o3),expr(o4),e5)
end
function permute!(e1::Expr,o2::Any,o3::Any,o4::Any,e5::Expr)
    Expr(:call,:permute!,e1,expr(o2),expr(o3),expr(o4),e5)
end
function permute!(o1::Any,e2::Expr,o3::Any,o4::Any,e5::Expr)
    Expr(:call,:permute!,expr(o1),e2,expr(o3),expr(o4),e5)
end
function permute!(e1::Expr,e2::Expr,o3::Any,o4::Any,e5::Expr)
    Expr(:call,:permute!,e1,e2,expr(o3),expr(o4),e5)
end
function permute!(o1::Any,o2::Any,e3::Expr,o4::Any,e5::Expr)
    Expr(:call,:permute!,expr(o1),expr(o2),e3,expr(o4),e5)
end
function permute!(e1::Expr,o2::Any,e3::Expr,o4::Any,e5::Expr)
    Expr(:call,:permute!,e1,expr(o2),e3,expr(o4),e5)
end
function permute!(o1::Any,e2::Expr,e3::Expr,o4::Any,e5::Expr)
    Expr(:call,:permute!,expr(o1),e2,e3,expr(o4),e5)
end
function permute!(e1::Expr,e2::Expr,e3::Expr,o4::Any,e5::Expr)
    Expr(:call,:permute!,e1,e2,e3,expr(o4),e5)
end
function permute!(o1::Any,o2::Any,o3::Any,e4::Expr,e5::Expr)
    Expr(:call,:permute!,expr(o1),expr(o2),expr(o3),e4,e5)
end
function permute!(e1::Expr,o2::Any,o3::Any,e4::Expr,e5::Expr)
    Expr(:call,:permute!,e1,expr(o2),expr(o3),e4,e5)
end
function permute!(o1::Any,e2::Expr,o3::Any,e4::Expr,e5::Expr)
    Expr(:call,:permute!,expr(o1),e2,expr(o3),e4,e5)
end
function permute!(e1::Expr,e2::Expr,o3::Any,e4::Expr,e5::Expr)
    Expr(:call,:permute!,e1,e2,expr(o3),e4,e5)
end
function permute!(o1::Any,o2::Any,e3::Expr,e4::Expr,e5::Expr)
    Expr(:call,:permute!,expr(o1),expr(o2),e3,e4,e5)
end
function permute!(e1::Expr,o2::Any,e3::Expr,e4::Expr,e5::Expr)
    Expr(:call,:permute!,e1,expr(o2),e3,e4,e5)
end
function permute!(o1::Any,e2::Expr,e3::Expr,e4::Expr,e5::Expr)
    Expr(:call,:permute!,expr(o1),e2,e3,e4,e5)
end
function permute!(e1::Expr,e2::Expr,e3::Expr,e4::Expr,e5::Expr)
    Expr(:call,:permute!,e1,e2,e3,e4,e5)
end
function permutedims(e1::Expr,o2::Any)
    Expr(:call,:permutedims,e1,expr(o2))
end
function permutedims(e1::Expr,e2::Expr)
    Expr(:call,:permutedims,e1,e2)
end
function permutedims!(o1::Any,e2::Expr,o3::Any)
    Expr(:call,:permutedims!,expr(o1),e2,expr(o3))
end
function permutedims!(o1::Any,e2::Expr,e3::Expr)
    Expr(:call,:permutedims!,expr(o1),e2,e3)
end
function permutedims!(e1::Expr,e2::Expr,o3::Any)
    Expr(:call,:permutedims!,e1,e2,expr(o3))
end
function permutedims!(e1::Expr,e2::Expr,e3::Expr)
    Expr(:call,:permutedims!,e1,e2,e3)
end
function pinv(e1::Expr,o2::Any)
    Expr(:call,:pinv,e1,expr(o2))
end
function pinv(o1::Any,e2::Expr)
    Expr(:call,:pinv,expr(o1),e2)
end
function pinv(e1::Expr,e2::Expr)
    Expr(:call,:pinv,e1,e2)
end
function pinv(e1::Expr)
    Expr(:call,:pinv,e1)
end
function pipeline(e1::Expr,o2::Any)
    Expr(:call,:pipeline,e1,expr(o2))
end
function pipeline(e1::Expr,e2::Expr)
    Expr(:call,:pipeline,e1,e2)
end
function pipeline(e1::Expr)
    Expr(:call,:pipeline,e1)
end
function plan_bfft(e1::Expr,o2::Any)
    Expr(:call,:plan_bfft,e1,expr(o2))
end
function plan_bfft(e1::Expr,e2::Expr)
    Expr(:call,:plan_bfft,e1,e2)
end
function plan_bfft(e1::Expr)
    Expr(:call,:plan_bfft,e1)
end
function plan_bfft!(e1::Expr,o2::Any)
    Expr(:call,:plan_bfft!,e1,expr(o2))
end
function plan_bfft!(e1::Expr,e2::Expr)
    Expr(:call,:plan_bfft!,e1,e2)
end
function plan_bfft!(e1::Expr)
    Expr(:call,:plan_bfft!,e1)
end
function plan_brfft(e1::Expr,o2::Any)
    Expr(:call,:plan_brfft,e1,expr(o2))
end
function plan_brfft(o1::Any,e2::Expr)
    Expr(:call,:plan_brfft,expr(o1),e2)
end
function plan_brfft(e1::Expr,e2::Expr)
    Expr(:call,:plan_brfft,e1,e2)
end
function plan_brfft(e1::Expr,o2::Any,o3::Any)
    Expr(:call,:plan_brfft,e1,expr(o2),expr(o3))
end
function plan_brfft(o1::Any,e2::Expr,o3::Any)
    Expr(:call,:plan_brfft,expr(o1),e2,expr(o3))
end
function plan_brfft(e1::Expr,e2::Expr,o3::Any)
    Expr(:call,:plan_brfft,e1,e2,expr(o3))
end
function plan_brfft(e1::Expr,e2::Expr,e3::Expr)
    Expr(:call,:plan_brfft,e1,e2,e3)
end
function plan_brfft(e1::Expr)
    Expr(:call,:plan_brfft,e1)
end
function plan_dct(e1::Expr,o2::Any)
    Expr(:call,:plan_dct,e1,expr(o2))
end
function plan_dct(e1::Expr,e2::Expr)
    Expr(:call,:plan_dct,e1,e2)
end
function plan_dct(e1::Expr)
    Expr(:call,:plan_dct,e1)
end
function plan_dct!(e1::Expr,o2::Any)
    Expr(:call,:plan_dct!,e1,expr(o2))
end
function plan_dct!(e1::Expr,e2::Expr)
    Expr(:call,:plan_dct!,e1,e2)
end
function plan_dct!(e1::Expr)
    Expr(:call,:plan_dct!,e1)
end
function plan_fft(e1::Expr,o2::Any)
    Expr(:call,:plan_fft,e1,expr(o2))
end
function plan_fft(e1::Expr,e2::Expr)
    Expr(:call,:plan_fft,e1,e2)
end
function plan_fft(e1::Expr)
    Expr(:call,:plan_fft,e1)
end
function plan_fft!(e1::Expr,o2::Any)
    Expr(:call,:plan_fft!,e1,expr(o2))
end
function plan_fft!(e1::Expr,e2::Expr)
    Expr(:call,:plan_fft!,e1,e2)
end
function plan_fft!(e1::Expr)
    Expr(:call,:plan_fft!,e1)
end
function plan_idct(e1::Expr,o2::Any)
    Expr(:call,:plan_idct,e1,expr(o2))
end
function plan_idct(e1::Expr,e2::Expr)
    Expr(:call,:plan_idct,e1,e2)
end
function plan_idct(e1::Expr)
    Expr(:call,:plan_idct,e1)
end
function plan_idct!(e1::Expr,o2::Any)
    Expr(:call,:plan_idct!,e1,expr(o2))
end
function plan_idct!(e1::Expr,e2::Expr)
    Expr(:call,:plan_idct!,e1,e2)
end
function plan_idct!(e1::Expr)
    Expr(:call,:plan_idct!,e1)
end
function plan_ifft(e1::Expr,o2::Any)
    Expr(:call,:plan_ifft,e1,expr(o2))
end
function plan_ifft(e1::Expr,e2::Expr)
    Expr(:call,:plan_ifft,e1,e2)
end
function plan_ifft(e1::Expr)
    Expr(:call,:plan_ifft,e1)
end
function plan_ifft!(e1::Expr,o2::Any)
    Expr(:call,:plan_ifft!,e1,expr(o2))
end
function plan_ifft!(e1::Expr,e2::Expr)
    Expr(:call,:plan_ifft!,e1,e2)
end
function plan_ifft!(e1::Expr)
    Expr(:call,:plan_ifft!,e1)
end
function plan_irfft(e1::Expr,o2::Any)
    Expr(:call,:plan_irfft,e1,expr(o2))
end
function plan_irfft(o1::Any,e2::Expr)
    Expr(:call,:plan_irfft,expr(o1),e2)
end
function plan_irfft(e1::Expr,e2::Expr)
    Expr(:call,:plan_irfft,e1,e2)
end
function plan_irfft(e1::Expr,o2::Any,o3::Any)
    Expr(:call,:plan_irfft,e1,expr(o2),expr(o3))
end
function plan_irfft(o1::Any,e2::Expr,o3::Any)
    Expr(:call,:plan_irfft,expr(o1),e2,expr(o3))
end
function plan_irfft(e1::Expr,e2::Expr,o3::Any)
    Expr(:call,:plan_irfft,e1,e2,expr(o3))
end
function plan_irfft(e1::Expr,e2::Expr,e3::Expr)
    Expr(:call,:plan_irfft,e1,e2,e3)
end
function plan_rfft(e1::Expr,o2::Any)
    Expr(:call,:plan_rfft,e1,expr(o2))
end
function plan_rfft(e1::Expr,e2::Expr)
    Expr(:call,:plan_rfft,e1,e2)
end
function plan_rfft(e1::Expr)
    Expr(:call,:plan_rfft,e1)
end
function pointer(e1::Expr,o2::Any)
    Expr(:call,:pointer,e1,expr(o2))
end
function pointer(o1::Any,e2::Expr)
    Expr(:call,:pointer,expr(o1),e2)
end
function pointer(e1::Expr,e2::Expr)
    Expr(:call,:pointer,e1,e2)
end
function pointer(e1::Expr)
    Expr(:call,:pointer,e1)
end
function pointer_to_array(e1::Expr,o2::Any)
    Expr(:call,:pointer_to_array,e1,expr(o2))
end
function pointer_to_array(o1::Any,e2::Expr)
    Expr(:call,:pointer_to_array,expr(o1),e2)
end
function pointer_to_array(e1::Expr,e2::Expr)
    Expr(:call,:pointer_to_array,e1,e2)
end
function pointer_to_array(e1::Expr,o2::Any,o3::Any)
    Expr(:call,:pointer_to_array,e1,expr(o2),expr(o3))
end
function pointer_to_array(o1::Any,e2::Expr,o3::Any)
    Expr(:call,:pointer_to_array,expr(o1),e2,expr(o3))
end
function pointer_to_array(e1::Expr,e2::Expr,o3::Any)
    Expr(:call,:pointer_to_array,e1,e2,expr(o3))
end
function pointer_to_array(o1::Any,o2::Any,e3::Expr)
    Expr(:call,:pointer_to_array,expr(o1),expr(o2),e3)
end
function pointer_to_array(e1::Expr,o2::Any,e3::Expr)
    Expr(:call,:pointer_to_array,e1,expr(o2),e3)
end
function pointer_to_array(o1::Any,e2::Expr,e3::Expr)
    Expr(:call,:pointer_to_array,expr(o1),e2,e3)
end
function pointer_to_array(e1::Expr,e2::Expr,e3::Expr)
    Expr(:call,:pointer_to_array,e1,e2,e3)
end
function pointer_to_string(e1::Expr,o2::Any)
    Expr(:call,:pointer_to_string,e1,expr(o2))
end
function pointer_to_string(o1::Any,e2::Expr)
    Expr(:call,:pointer_to_string,expr(o1),e2)
end
function pointer_to_string(e1::Expr,e2::Expr)
    Expr(:call,:pointer_to_string,e1,e2)
end
function pointer_to_string(e1::Expr,o2::Any,o3::Any)
    Expr(:call,:pointer_to_string,e1,expr(o2),expr(o3))
end
function pointer_to_string(o1::Any,e2::Expr,o3::Any)
    Expr(:call,:pointer_to_string,expr(o1),e2,expr(o3))
end
function pointer_to_string(e1::Expr,e2::Expr,o3::Any)
    Expr(:call,:pointer_to_string,e1,e2,expr(o3))
end
function pointer_to_string(o1::Any,o2::Any,e3::Expr)
    Expr(:call,:pointer_to_string,expr(o1),expr(o2),e3)
end
function pointer_to_string(e1::Expr,o2::Any,e3::Expr)
    Expr(:call,:pointer_to_string,e1,expr(o2),e3)
end
function pointer_to_string(o1::Any,e2::Expr,e3::Expr)
    Expr(:call,:pointer_to_string,expr(o1),e2,e3)
end
function pointer_to_string(e1::Expr,e2::Expr,e3::Expr)
    Expr(:call,:pointer_to_string,e1,e2,e3)
end
function pointer_to_string(e1::Expr)
    Expr(:call,:pointer_to_string,e1)
end
function poll_fd(e1::Expr,o2::Any)
    Expr(:call,:poll_fd,e1,expr(o2))
end
function poll_fd(o1::Any,e2::Expr)
    Expr(:call,:poll_fd,expr(o1),e2)
end
function poll_fd(e1::Expr,e2::Expr)
    Expr(:call,:poll_fd,e1,e2)
end
function poll_fd(e1::Expr)
    Expr(:call,:poll_fd,e1)
end
function poll_file(e1::Expr,o2::Any)
    Expr(:call,:poll_file,e1,expr(o2))
end
function poll_file(o1::Any,e2::Expr)
    Expr(:call,:poll_file,expr(o1),e2)
end
function poll_file(e1::Expr,e2::Expr)
    Expr(:call,:poll_file,e1,e2)
end
function poll_file(e1::Expr,o2::Any,o3::Any)
    Expr(:call,:poll_file,e1,expr(o2),expr(o3))
end
function poll_file(o1::Any,e2::Expr,o3::Any)
    Expr(:call,:poll_file,expr(o1),e2,expr(o3))
end
function poll_file(e1::Expr,e2::Expr,o3::Any)
    Expr(:call,:poll_file,e1,e2,expr(o3))
end
function poll_file(o1::Any,o2::Any,e3::Expr)
    Expr(:call,:poll_file,expr(o1),expr(o2),e3)
end
function poll_file(e1::Expr,o2::Any,e3::Expr)
    Expr(:call,:poll_file,e1,expr(o2),e3)
end
function poll_file(o1::Any,e2::Expr,e3::Expr)
    Expr(:call,:poll_file,expr(o1),e2,e3)
end
function poll_file(e1::Expr,e2::Expr,e3::Expr)
    Expr(:call,:poll_file,e1,e2,e3)
end
function poll_file(e1::Expr)
    Expr(:call,:poll_file,e1)
end
function polygamma(e1::Expr,o2::Any)
    Expr(:call,:polygamma,e1,expr(o2))
end
function polygamma(o1::Any,e2::Expr)
    Expr(:call,:polygamma,expr(o1),e2)
end
function polygamma(e1::Expr,e2::Expr)
    Expr(:call,:polygamma,e1,e2)
end
function pop!(e1::Expr,o2::Any)
    Expr(:call,:pop!,e1,expr(o2))
end
function pop!(e1::Expr,e2::Expr)
    Expr(:call,:pop!,e1,e2)
end
function pop!(e1::Expr,o2::Any,o3::Any)
    Expr(:call,:pop!,e1,expr(o2),expr(o3))
end
function pop!(e1::Expr,e2::Expr,o3::Any)
    Expr(:call,:pop!,e1,e2,expr(o3))
end
function pop!(e1::Expr,o2::Any,e3::Expr)
    Expr(:call,:pop!,e1,expr(o2),e3)
end
function pop!(e1::Expr,e2::Expr,e3::Expr)
    Expr(:call,:pop!,e1,e2,e3)
end
function pop!(e1::Expr)
    Expr(:call,:pop!,e1)
end
function popdisplay(e1::Expr)
    Expr(:call,:popdisplay,e1)
end
function position(e1::Expr)
    Expr(:call,:position,e1)
end
function powermod(e1::Expr,o2::Any,o3::Any)
    Expr(:call,:powermod,e1,expr(o2),expr(o3))
end
function powermod(o1::Any,e2::Expr,o3::Any)
    Expr(:call,:powermod,expr(o1),e2,expr(o3))
end
function powermod(e1::Expr,e2::Expr,o3::Any)
    Expr(:call,:powermod,e1,e2,expr(o3))
end
function powermod(o1::Any,o2::Any,e3::Expr)
    Expr(:call,:powermod,expr(o1),expr(o2),e3)
end
function powermod(e1::Expr,o2::Any,e3::Expr)
    Expr(:call,:powermod,e1,expr(o2),e3)
end
function powermod(o1::Any,e2::Expr,e3::Expr)
    Expr(:call,:powermod,expr(o1),e2,e3)
end
function powermod(e1::Expr,e2::Expr,e3::Expr)
    Expr(:call,:powermod,e1,e2,e3)
end
function precision(e1::Expr)
    Expr(:call,:precision,e1)
end
function precompile(o1::Any,e2::Expr)
    Expr(:call,:precompile,expr(o1),e2)
end
function precompile(e1::Expr,e2::Expr)
    Expr(:call,:precompile,e1,e2)
end
function precompile(e1::Expr)
    Expr(:call,:precompile,e1)
end
function prepend!(e1::Expr,o2::Any)
    Expr(:call,:prepend!,e1,expr(o2))
end
function prepend!(o1::Any,e2::Expr)
    Expr(:call,:prepend!,expr(o1),e2)
end
function prepend!(e1::Expr,e2::Expr)
    Expr(:call,:prepend!,e1,e2)
end
function prevfloat(e1::Expr)
    Expr(:call,:prevfloat,e1)
end
function prevind(e1::Expr,o2::Any)
    Expr(:call,:prevind,e1,expr(o2))
end
function prevind(o1::Any,e2::Expr)
    Expr(:call,:prevind,expr(o1),e2)
end
function prevind(e1::Expr,e2::Expr)
    Expr(:call,:prevind,e1,e2)
end
function prevpow(e1::Expr,o2::Any)
    Expr(:call,:prevpow,e1,expr(o2))
end
function prevpow(o1::Any,e2::Expr)
    Expr(:call,:prevpow,expr(o1),e2)
end
function prevpow(e1::Expr,e2::Expr)
    Expr(:call,:prevpow,e1,e2)
end
function prevpow2(e1::Expr)
    Expr(:call,:prevpow2,e1)
end
function print_shortest(e1::Expr,o2::Any)
    Expr(:call,:print_shortest,e1,expr(o2))
end
function print_shortest(o1::Any,e2::Expr)
    Expr(:call,:print_shortest,expr(o1),e2)
end
function print_shortest(e1::Expr,e2::Expr)
    Expr(:call,:print_shortest,e1,e2)
end
function print_shortest(e1::Expr,o2::Any,o3::Any)
    Expr(:call,:print_shortest,e1,expr(o2),expr(o3))
end
function print_shortest(o1::Any,e2::Expr,o3::Any)
    Expr(:call,:print_shortest,expr(o1),e2,expr(o3))
end
function print_shortest(e1::Expr,e2::Expr,o3::Any)
    Expr(:call,:print_shortest,e1,e2,expr(o3))
end
function print_shortest(o1::Any,o2::Any,e3::Expr)
    Expr(:call,:print_shortest,expr(o1),expr(o2),e3)
end
function print_shortest(e1::Expr,o2::Any,e3::Expr)
    Expr(:call,:print_shortest,e1,expr(o2),e3)
end
function print_shortest(o1::Any,e2::Expr,e3::Expr)
    Expr(:call,:print_shortest,expr(o1),e2,e3)
end
function print_shortest(e1::Expr,e2::Expr,e3::Expr)
    Expr(:call,:print_shortest,e1,e2,e3)
end
function print_with_color(e1::Expr,o2::Any)
    Expr(:call,:print_with_color,e1,expr(o2))
end
function print_with_color(o1::Any,e2::Expr)
    Expr(:call,:print_with_color,expr(o1),e2)
end
function print_with_color(e1::Expr,e2::Expr)
    Expr(:call,:print_with_color,e1,e2)
end
function print_with_color(e1::Expr,o2::Any,o3::Any)
    Expr(:call,:print_with_color,e1,expr(o2),expr(o3))
end
function print_with_color(o1::Any,e2::Expr,o3::Any)
    Expr(:call,:print_with_color,expr(o1),e2,expr(o3))
end
function print_with_color(e1::Expr,e2::Expr,o3::Any)
    Expr(:call,:print_with_color,e1,e2,expr(o3))
end
function print_with_color(o1::Any,o2::Any,e3::Expr)
    Expr(:call,:print_with_color,expr(o1),expr(o2),e3)
end
function print_with_color(e1::Expr,o2::Any,e3::Expr)
    Expr(:call,:print_with_color,e1,expr(o2),e3)
end
function print_with_color(o1::Any,e2::Expr,e3::Expr)
    Expr(:call,:print_with_color,expr(o1),e2,e3)
end
function print_with_color(e1::Expr,e2::Expr,e3::Expr)
    Expr(:call,:print_with_color,e1,e2,e3)
end
function process_exited(e1::Expr)
    Expr(:call,:process_exited,e1)
end
function process_running(e1::Expr)
    Expr(:call,:process_running,e1)
end
function procs(e1::Expr)
    Expr(:call,:procs,e1)
end
function prod(e1::Expr,o2::Any)
    Expr(:call,:prod,e1,expr(o2))
end
function prod(e1::Expr,e2::Expr)
    Expr(:call,:prod,e1,e2)
end
function prod(e1::Expr,o2::Any,o3::Any)
    Expr(:call,:prod,e1,expr(o2),expr(o3))
end
function prod(o1::Any,e2::Expr,o3::Any)
    Expr(:call,:prod,expr(o1),e2,expr(o3))
end
function prod(e1::Expr,e2::Expr,o3::Any)
    Expr(:call,:prod,e1,e2,expr(o3))
end
function prod(e1::Expr,e2::Expr,e3::Expr)
    Expr(:call,:prod,e1,e2,e3)
end
function prod!(e1::Expr,o2::Any)
    Expr(:call,:prod!,e1,expr(o2))
end
function prod!(o1::Any,e2::Expr)
    Expr(:call,:prod!,expr(o1),e2)
end
function prod!(e1::Expr,e2::Expr)
    Expr(:call,:prod!,e1,e2)
end
function prod!(e1::Expr,o2::Any,o3::Any)
    Expr(:call,:prod!,e1,expr(o2),expr(o3))
end
function prod!(o1::Any,e2::Expr,o3::Any)
    Expr(:call,:prod!,expr(o1),e2,expr(o3))
end
function prod!(e1::Expr,e2::Expr,o3::Any)
    Expr(:call,:prod!,e1,e2,expr(o3))
end
function prod!(o1::Any,o2::Any,e3::Expr)
    Expr(:call,:prod!,expr(o1),expr(o2),e3)
end
function prod!(e1::Expr,o2::Any,e3::Expr)
    Expr(:call,:prod!,e1,expr(o2),e3)
end
function prod!(o1::Any,e2::Expr,e3::Expr)
    Expr(:call,:prod!,expr(o1),e2,e3)
end
function prod!(e1::Expr,e2::Expr,e3::Expr)
    Expr(:call,:prod!,e1,e2,e3)
end
function promote_shape(e1::Expr,o2::Any)
    Expr(:call,:promote_shape,e1,expr(o2))
end
function promote_shape(o1::Any,e2::Expr)
    Expr(:call,:promote_shape,expr(o1),e2)
end
function promote_shape(e1::Expr,e2::Expr)
    Expr(:call,:promote_shape,e1,e2)
end
function promote_type(e1::Expr,o2::Any)
    Expr(:call,:promote_type,e1,expr(o2))
end
function promote_type(o1::Any,e2::Expr)
    Expr(:call,:promote_type,expr(o1),e2)
end
function promote_type(e1::Expr,e2::Expr)
    Expr(:call,:promote_type,e1,e2)
end
function push!(e1::Expr,o2::Any)
    Expr(:call,:push!,e1,expr(o2))
end
function push!(e1::Expr,e2::Expr)
    Expr(:call,:push!,e1,e2)
end
function push!(e1::Expr)
    Expr(:call,:push!,e1)
end
function pushdisplay(e1::Expr)
    Expr(:call,:pushdisplay,e1)
end
function put!(e1::Expr,o2::Any)
    Expr(:call,:put!,e1,expr(o2))
end
function put!(e1::Expr,e2::Expr)
    Expr(:call,:put!,e1,e2)
end
function qr(e1::Expr,o2::Any)
    Expr(:call,:qr,e1,expr(o2))
end
function qr(o1::Any,e2::Expr)
    Expr(:call,:qr,expr(o1),e2)
end
function qr(e1::Expr,e2::Expr)
    Expr(:call,:qr,e1,e2)
end
function qr(e1::Expr)
    Expr(:call,:qr,e1)
end
function qrfact(e1::Expr,o2::Any)
    Expr(:call,:qrfact,e1,expr(o2))
end
function qrfact(e1::Expr,e2::Expr)
    Expr(:call,:qrfact,e1,e2)
end
function qrfact(e1::Expr)
    Expr(:call,:qrfact,e1)
end
function qrfact!(e1::Expr,o2::Any)
    Expr(:call,:qrfact!,e1,expr(o2))
end
function qrfact!(o1::Any,e2::Expr)
    Expr(:call,:qrfact!,expr(o1),e2)
end
function qrfact!(e1::Expr,e2::Expr)
    Expr(:call,:qrfact!,e1,e2)
end
function qrfact!(e1::Expr)
    Expr(:call,:qrfact!,e1)
end
function quantile(e1::Expr,o2::Any)
    Expr(:call,:quantile,e1,expr(o2))
end
function quantile(e1::Expr,e2::Expr)
    Expr(:call,:quantile,e1,e2)
end
function quantile!(e1::Expr,o2::Any)
    Expr(:call,:quantile!,e1,expr(o2))
end
function quantile!(o1::Any,e2::Expr)
    Expr(:call,:quantile!,expr(o1),e2)
end
function quantile!(e1::Expr,e2::Expr)
    Expr(:call,:quantile!,e1,e2)
end
function quantile!(e1::Expr,o2::Any,o3::Any)
    Expr(:call,:quantile!,e1,expr(o2),expr(o3))
end
function quantile!(o1::Any,e2::Expr,o3::Any)
    Expr(:call,:quantile!,expr(o1),e2,expr(o3))
end
function quantile!(e1::Expr,e2::Expr,o3::Any)
    Expr(:call,:quantile!,e1,e2,expr(o3))
end
function quantile!(o1::Any,o2::Any,e3::Expr)
    Expr(:call,:quantile!,expr(o1),expr(o2),e3)
end
function quantile!(e1::Expr,o2::Any,e3::Expr)
    Expr(:call,:quantile!,e1,expr(o2),e3)
end
function quantile!(o1::Any,e2::Expr,e3::Expr)
    Expr(:call,:quantile!,expr(o1),e2,e3)
end
function quantile!(e1::Expr,e2::Expr,e3::Expr)
    Expr(:call,:quantile!,e1,e2,e3)
end
function rad2deg(e1::Expr)
    Expr(:call,:rad2deg,e1)
end
function rand(e1::Expr,o2::Any,o3::Any,o4::Any)
    Expr(:call,:rand,e1,expr(o2),expr(o3),expr(o4))
end
function rand(o1::Any,e2::Expr,o3::Any,o4::Any)
    Expr(:call,:rand,expr(o1),e2,expr(o3),expr(o4))
end
function rand(e1::Expr,e2::Expr,o3::Any,o4::Any)
    Expr(:call,:rand,e1,e2,expr(o3),expr(o4))
end
function rand(o1::Any,o2::Any,e3::Expr,o4::Any)
    Expr(:call,:rand,expr(o1),expr(o2),e3,expr(o4))
end
function rand(e1::Expr,o2::Any,e3::Expr,o4::Any)
    Expr(:call,:rand,e1,expr(o2),e3,expr(o4))
end
function rand(o1::Any,e2::Expr,e3::Expr,o4::Any)
    Expr(:call,:rand,expr(o1),e2,e3,expr(o4))
end
function rand(e1::Expr,e2::Expr,e3::Expr,o4::Any)
    Expr(:call,:rand,e1,e2,e3,expr(o4))
end
function rand(o1::Any,o2::Any,o3::Any,e4::Expr)
    Expr(:call,:rand,expr(o1),expr(o2),expr(o3),e4)
end
function rand(e1::Expr,o2::Any,o3::Any,e4::Expr)
    Expr(:call,:rand,e1,expr(o2),expr(o3),e4)
end
function rand(o1::Any,e2::Expr,o3::Any,e4::Expr)
    Expr(:call,:rand,expr(o1),e2,expr(o3),e4)
end
function rand(e1::Expr,e2::Expr,o3::Any,e4::Expr)
    Expr(:call,:rand,e1,e2,expr(o3),e4)
end
function rand(o1::Any,o2::Any,e3::Expr,e4::Expr)
    Expr(:call,:rand,expr(o1),expr(o2),e3,e4)
end
function rand(e1::Expr,o2::Any,e3::Expr,e4::Expr)
    Expr(:call,:rand,e1,expr(o2),e3,e4)
end
function rand(o1::Any,e2::Expr,e3::Expr,e4::Expr)
    Expr(:call,:rand,expr(o1),e2,e3,e4)
end
function rand(e1::Expr,e2::Expr,e3::Expr,e4::Expr)
    Expr(:call,:rand,e1,e2,e3,e4)
end
function rand(e1::Expr,o2::Any)
    Expr(:call,:rand,e1,expr(o2))
end
function rand(o1::Any,e2::Expr)
    Expr(:call,:rand,expr(o1),e2)
end
function rand(e1::Expr,e2::Expr)
    Expr(:call,:rand,e1,e2)
end
function rand(e1::Expr,o2::Any,o3::Any)
    Expr(:call,:rand,e1,expr(o2),expr(o3))
end
function rand(o1::Any,e2::Expr,o3::Any)
    Expr(:call,:rand,expr(o1),e2,expr(o3))
end
function rand(e1::Expr,e2::Expr,o3::Any)
    Expr(:call,:rand,e1,e2,expr(o3))
end
function rand(o1::Any,o2::Any,e3::Expr)
    Expr(:call,:rand,expr(o1),expr(o2),e3)
end
function rand(e1::Expr,o2::Any,e3::Expr)
    Expr(:call,:rand,e1,expr(o2),e3)
end
function rand(o1::Any,e2::Expr,e3::Expr)
    Expr(:call,:rand,expr(o1),e2,e3)
end
function rand(e1::Expr,e2::Expr,e3::Expr)
    Expr(:call,:rand,e1,e2,e3)
end
function rand(e1::Expr)
    Expr(:call,:rand,e1)
end
function rand!(e1::Expr,o2::Any,o3::Any,o4::Any)
    Expr(:call,:rand!,e1,expr(o2),expr(o3),expr(o4))
end
function rand!(o1::Any,e2::Expr,o3::Any,o4::Any)
    Expr(:call,:rand!,expr(o1),e2,expr(o3),expr(o4))
end
function rand!(e1::Expr,e2::Expr,o3::Any,o4::Any)
    Expr(:call,:rand!,e1,e2,expr(o3),expr(o4))
end
function rand!(o1::Any,o2::Any,e3::Expr,o4::Any)
    Expr(:call,:rand!,expr(o1),expr(o2),e3,expr(o4))
end
function rand!(e1::Expr,o2::Any,e3::Expr,o4::Any)
    Expr(:call,:rand!,e1,expr(o2),e3,expr(o4))
end
function rand!(o1::Any,e2::Expr,e3::Expr,o4::Any)
    Expr(:call,:rand!,expr(o1),e2,e3,expr(o4))
end
function rand!(e1::Expr,e2::Expr,e3::Expr,o4::Any)
    Expr(:call,:rand!,e1,e2,e3,expr(o4))
end
function rand!(o1::Any,o2::Any,o3::Any,e4::Expr)
    Expr(:call,:rand!,expr(o1),expr(o2),expr(o3),e4)
end
function rand!(e1::Expr,o2::Any,o3::Any,e4::Expr)
    Expr(:call,:rand!,e1,expr(o2),expr(o3),e4)
end
function rand!(o1::Any,e2::Expr,o3::Any,e4::Expr)
    Expr(:call,:rand!,expr(o1),e2,expr(o3),e4)
end
function rand!(e1::Expr,e2::Expr,o3::Any,e4::Expr)
    Expr(:call,:rand!,e1,e2,expr(o3),e4)
end
function rand!(o1::Any,o2::Any,e3::Expr,e4::Expr)
    Expr(:call,:rand!,expr(o1),expr(o2),e3,e4)
end
function rand!(e1::Expr,o2::Any,e3::Expr,e4::Expr)
    Expr(:call,:rand!,e1,expr(o2),e3,e4)
end
function rand!(o1::Any,e2::Expr,e3::Expr,e4::Expr)
    Expr(:call,:rand!,expr(o1),e2,e3,e4)
end
function rand!(e1::Expr,e2::Expr,e3::Expr,e4::Expr)
    Expr(:call,:rand!,e1,e2,e3,e4)
end
function rand!(e1::Expr,o2::Any)
    Expr(:call,:rand!,e1,expr(o2))
end
function rand!(o1::Any,e2::Expr)
    Expr(:call,:rand!,expr(o1),e2)
end
function rand!(e1::Expr,e2::Expr)
    Expr(:call,:rand!,e1,e2)
end
function rand!(e1::Expr,o2::Any,o3::Any)
    Expr(:call,:rand!,e1,expr(o2),expr(o3))
end
function rand!(o1::Any,e2::Expr,o3::Any)
    Expr(:call,:rand!,expr(o1),e2,expr(o3))
end
function rand!(e1::Expr,e2::Expr,o3::Any)
    Expr(:call,:rand!,e1,e2,expr(o3))
end
function rand!(o1::Any,o2::Any,e3::Expr)
    Expr(:call,:rand!,expr(o1),expr(o2),e3)
end
function rand!(e1::Expr,o2::Any,e3::Expr)
    Expr(:call,:rand!,e1,expr(o2),e3)
end
function rand!(o1::Any,e2::Expr,e3::Expr)
    Expr(:call,:rand!,expr(o1),e2,e3)
end
function rand!(e1::Expr,e2::Expr,e3::Expr)
    Expr(:call,:rand!,e1,e2,e3)
end
function rand!(e1::Expr)
    Expr(:call,:rand!,e1)
end
function randcycle(e1::Expr,o2::Any)
    Expr(:call,:randcycle,e1,expr(o2))
end
function randcycle(o1::Any,e2::Expr)
    Expr(:call,:randcycle,expr(o1),e2)
end
function randcycle(e1::Expr,e2::Expr)
    Expr(:call,:randcycle,e1,e2)
end
function randcycle(e1::Expr)
    Expr(:call,:randcycle,e1)
end
function randexp(e1::Expr,o2::Any,o3::Any,o4::Any)
    Expr(:call,:randexp,e1,expr(o2),expr(o3),expr(o4))
end
function randexp(o1::Any,e2::Expr,o3::Any,o4::Any)
    Expr(:call,:randexp,expr(o1),e2,expr(o3),expr(o4))
end
function randexp(e1::Expr,e2::Expr,o3::Any,o4::Any)
    Expr(:call,:randexp,e1,e2,expr(o3),expr(o4))
end
function randexp(o1::Any,o2::Any,e3::Expr,o4::Any)
    Expr(:call,:randexp,expr(o1),expr(o2),e3,expr(o4))
end
function randexp(e1::Expr,o2::Any,e3::Expr,o4::Any)
    Expr(:call,:randexp,e1,expr(o2),e3,expr(o4))
end
function randexp(o1::Any,e2::Expr,e3::Expr,o4::Any)
    Expr(:call,:randexp,expr(o1),e2,e3,expr(o4))
end
function randexp(e1::Expr,e2::Expr,e3::Expr,o4::Any)
    Expr(:call,:randexp,e1,e2,e3,expr(o4))
end
function randexp(o1::Any,o2::Any,o3::Any,e4::Expr)
    Expr(:call,:randexp,expr(o1),expr(o2),expr(o3),e4)
end
function randexp(e1::Expr,o2::Any,o3::Any,e4::Expr)
    Expr(:call,:randexp,e1,expr(o2),expr(o3),e4)
end
function randexp(o1::Any,e2::Expr,o3::Any,e4::Expr)
    Expr(:call,:randexp,expr(o1),e2,expr(o3),e4)
end
function randexp(e1::Expr,e2::Expr,o3::Any,e4::Expr)
    Expr(:call,:randexp,e1,e2,expr(o3),e4)
end
function randexp(o1::Any,o2::Any,e3::Expr,e4::Expr)
    Expr(:call,:randexp,expr(o1),expr(o2),e3,e4)
end
function randexp(e1::Expr,o2::Any,e3::Expr,e4::Expr)
    Expr(:call,:randexp,e1,expr(o2),e3,e4)
end
function randexp(o1::Any,e2::Expr,e3::Expr,e4::Expr)
    Expr(:call,:randexp,expr(o1),e2,e3,e4)
end
function randexp(e1::Expr,e2::Expr,e3::Expr,e4::Expr)
    Expr(:call,:randexp,e1,e2,e3,e4)
end
function randexp(e1::Expr,o2::Any)
    Expr(:call,:randexp,e1,expr(o2))
end
function randexp(o1::Any,e2::Expr)
    Expr(:call,:randexp,expr(o1),e2)
end
function randexp(e1::Expr,e2::Expr)
    Expr(:call,:randexp,e1,e2)
end
function randexp(e1::Expr,o2::Any,o3::Any)
    Expr(:call,:randexp,e1,expr(o2),expr(o3))
end
function randexp(o1::Any,e2::Expr,o3::Any)
    Expr(:call,:randexp,expr(o1),e2,expr(o3))
end
function randexp(e1::Expr,e2::Expr,o3::Any)
    Expr(:call,:randexp,e1,e2,expr(o3))
end
function randexp(o1::Any,o2::Any,e3::Expr)
    Expr(:call,:randexp,expr(o1),expr(o2),e3)
end
function randexp(e1::Expr,o2::Any,e3::Expr)
    Expr(:call,:randexp,e1,expr(o2),e3)
end
function randexp(o1::Any,e2::Expr,e3::Expr)
    Expr(:call,:randexp,expr(o1),e2,e3)
end
function randexp(e1::Expr,e2::Expr,e3::Expr)
    Expr(:call,:randexp,e1,e2,e3)
end
function randexp(e1::Expr)
    Expr(:call,:randexp,e1)
end
function randexp!(e1::Expr,o2::Any)
    Expr(:call,:randexp!,e1,expr(o2))
end
function randexp!(o1::Any,e2::Expr)
    Expr(:call,:randexp!,expr(o1),e2)
end
function randexp!(e1::Expr,e2::Expr)
    Expr(:call,:randexp!,e1,e2)
end
function randexp!(e1::Expr)
    Expr(:call,:randexp!,e1)
end
function randjump(e1::Expr,o2::Any)
    Expr(:call,:randjump,e1,expr(o2))
end
function randjump(o1::Any,e2::Expr)
    Expr(:call,:randjump,expr(o1),e2)
end
function randjump(e1::Expr,e2::Expr)
    Expr(:call,:randjump,e1,e2)
end
function randjump(e1::Expr,o2::Any,o3::Any)
    Expr(:call,:randjump,e1,expr(o2),expr(o3))
end
function randjump(o1::Any,e2::Expr,o3::Any)
    Expr(:call,:randjump,expr(o1),e2,expr(o3))
end
function randjump(e1::Expr,e2::Expr,o3::Any)
    Expr(:call,:randjump,e1,e2,expr(o3))
end
function randjump(o1::Any,o2::Any,e3::Expr)
    Expr(:call,:randjump,expr(o1),expr(o2),e3)
end
function randjump(e1::Expr,o2::Any,e3::Expr)
    Expr(:call,:randjump,e1,expr(o2),e3)
end
function randjump(o1::Any,e2::Expr,e3::Expr)
    Expr(:call,:randjump,expr(o1),e2,e3)
end
function randjump(e1::Expr,e2::Expr,e3::Expr)
    Expr(:call,:randjump,e1,e2,e3)
end
function randn(e1::Expr,o2::Any,o3::Any,o4::Any)
    Expr(:call,:randn,e1,expr(o2),expr(o3),expr(o4))
end
function randn(o1::Any,e2::Expr,o3::Any,o4::Any)
    Expr(:call,:randn,expr(o1),e2,expr(o3),expr(o4))
end
function randn(e1::Expr,e2::Expr,o3::Any,o4::Any)
    Expr(:call,:randn,e1,e2,expr(o3),expr(o4))
end
function randn(o1::Any,o2::Any,e3::Expr,o4::Any)
    Expr(:call,:randn,expr(o1),expr(o2),e3,expr(o4))
end
function randn(e1::Expr,o2::Any,e3::Expr,o4::Any)
    Expr(:call,:randn,e1,expr(o2),e3,expr(o4))
end
function randn(o1::Any,e2::Expr,e3::Expr,o4::Any)
    Expr(:call,:randn,expr(o1),e2,e3,expr(o4))
end
function randn(e1::Expr,e2::Expr,e3::Expr,o4::Any)
    Expr(:call,:randn,e1,e2,e3,expr(o4))
end
function randn(o1::Any,o2::Any,o3::Any,e4::Expr)
    Expr(:call,:randn,expr(o1),expr(o2),expr(o3),e4)
end
function randn(e1::Expr,o2::Any,o3::Any,e4::Expr)
    Expr(:call,:randn,e1,expr(o2),expr(o3),e4)
end
function randn(o1::Any,e2::Expr,o3::Any,e4::Expr)
    Expr(:call,:randn,expr(o1),e2,expr(o3),e4)
end
function randn(e1::Expr,e2::Expr,o3::Any,e4::Expr)
    Expr(:call,:randn,e1,e2,expr(o3),e4)
end
function randn(o1::Any,o2::Any,e3::Expr,e4::Expr)
    Expr(:call,:randn,expr(o1),expr(o2),e3,e4)
end
function randn(e1::Expr,o2::Any,e3::Expr,e4::Expr)
    Expr(:call,:randn,e1,expr(o2),e3,e4)
end
function randn(o1::Any,e2::Expr,e3::Expr,e4::Expr)
    Expr(:call,:randn,expr(o1),e2,e3,e4)
end
function randn(e1::Expr,e2::Expr,e3::Expr,e4::Expr)
    Expr(:call,:randn,e1,e2,e3,e4)
end
function randn(e1::Expr,o2::Any)
    Expr(:call,:randn,e1,expr(o2))
end
function randn(o1::Any,e2::Expr)
    Expr(:call,:randn,expr(o1),e2)
end
function randn(e1::Expr,e2::Expr)
    Expr(:call,:randn,e1,e2)
end
function randn(e1::Expr,o2::Any,o3::Any)
    Expr(:call,:randn,e1,expr(o2),expr(o3))
end
function randn(o1::Any,e2::Expr,o3::Any)
    Expr(:call,:randn,expr(o1),e2,expr(o3))
end
function randn(e1::Expr,e2::Expr,o3::Any)
    Expr(:call,:randn,e1,e2,expr(o3))
end
function randn(o1::Any,o2::Any,e3::Expr)
    Expr(:call,:randn,expr(o1),expr(o2),e3)
end
function randn(e1::Expr,o2::Any,e3::Expr)
    Expr(:call,:randn,e1,expr(o2),e3)
end
function randn(o1::Any,e2::Expr,e3::Expr)
    Expr(:call,:randn,expr(o1),e2,e3)
end
function randn(e1::Expr,e2::Expr,e3::Expr)
    Expr(:call,:randn,e1,e2,e3)
end
function randn(e1::Expr)
    Expr(:call,:randn,e1)
end
function randn!(e1::Expr,o2::Any)
    Expr(:call,:randn!,e1,expr(o2))
end
function randn!(o1::Any,e2::Expr)
    Expr(:call,:randn!,expr(o1),e2)
end
function randn!(e1::Expr,e2::Expr)
    Expr(:call,:randn!,e1,e2)
end
function randn!(e1::Expr)
    Expr(:call,:randn!,e1)
end
function randperm(e1::Expr,o2::Any)
    Expr(:call,:randperm,e1,expr(o2))
end
function randperm(o1::Any,e2::Expr)
    Expr(:call,:randperm,expr(o1),e2)
end
function randperm(e1::Expr,e2::Expr)
    Expr(:call,:randperm,e1,e2)
end
function randperm(e1::Expr)
    Expr(:call,:randperm,e1)
end
function randstring(e1::Expr,o2::Any)
    Expr(:call,:randstring,e1,expr(o2))
end
function randstring(o1::Any,e2::Expr)
    Expr(:call,:randstring,expr(o1),e2)
end
function randstring(e1::Expr,e2::Expr)
    Expr(:call,:randstring,e1,e2)
end
function randstring(e1::Expr)
    Expr(:call,:randstring,e1)
end
function randsubseq(e1::Expr,o2::Any)
    Expr(:call,:randsubseq,e1,expr(o2))
end
function randsubseq(o1::Any,e2::Expr)
    Expr(:call,:randsubseq,expr(o1),e2)
end
function randsubseq(e1::Expr,e2::Expr)
    Expr(:call,:randsubseq,e1,e2)
end
function randsubseq(e1::Expr,o2::Any,o3::Any)
    Expr(:call,:randsubseq,e1,expr(o2),expr(o3))
end
function randsubseq(o1::Any,e2::Expr,o3::Any)
    Expr(:call,:randsubseq,expr(o1),e2,expr(o3))
end
function randsubseq(e1::Expr,e2::Expr,o3::Any)
    Expr(:call,:randsubseq,e1,e2,expr(o3))
end
function randsubseq(o1::Any,o2::Any,e3::Expr)
    Expr(:call,:randsubseq,expr(o1),expr(o2),e3)
end
function randsubseq(e1::Expr,o2::Any,e3::Expr)
    Expr(:call,:randsubseq,e1,expr(o2),e3)
end
function randsubseq(o1::Any,e2::Expr,e3::Expr)
    Expr(:call,:randsubseq,expr(o1),e2,e3)
end
function randsubseq(e1::Expr,e2::Expr,e3::Expr)
    Expr(:call,:randsubseq,e1,e2,e3)
end
function randsubseq!(e1::Expr,o2::Any,o3::Any,o4::Any)
    Expr(:call,:randsubseq!,e1,expr(o2),expr(o3),expr(o4))
end
function randsubseq!(o1::Any,e2::Expr,o3::Any,o4::Any)
    Expr(:call,:randsubseq!,expr(o1),e2,expr(o3),expr(o4))
end
function randsubseq!(e1::Expr,e2::Expr,o3::Any,o4::Any)
    Expr(:call,:randsubseq!,e1,e2,expr(o3),expr(o4))
end
function randsubseq!(o1::Any,o2::Any,e3::Expr,o4::Any)
    Expr(:call,:randsubseq!,expr(o1),expr(o2),e3,expr(o4))
end
function randsubseq!(e1::Expr,o2::Any,e3::Expr,o4::Any)
    Expr(:call,:randsubseq!,e1,expr(o2),e3,expr(o4))
end
function randsubseq!(o1::Any,e2::Expr,e3::Expr,o4::Any)
    Expr(:call,:randsubseq!,expr(o1),e2,e3,expr(o4))
end
function randsubseq!(e1::Expr,e2::Expr,e3::Expr,o4::Any)
    Expr(:call,:randsubseq!,e1,e2,e3,expr(o4))
end
function randsubseq!(o1::Any,o2::Any,o3::Any,e4::Expr)
    Expr(:call,:randsubseq!,expr(o1),expr(o2),expr(o3),e4)
end
function randsubseq!(e1::Expr,o2::Any,o3::Any,e4::Expr)
    Expr(:call,:randsubseq!,e1,expr(o2),expr(o3),e4)
end
function randsubseq!(o1::Any,e2::Expr,o3::Any,e4::Expr)
    Expr(:call,:randsubseq!,expr(o1),e2,expr(o3),e4)
end
function randsubseq!(e1::Expr,e2::Expr,o3::Any,e4::Expr)
    Expr(:call,:randsubseq!,e1,e2,expr(o3),e4)
end
function randsubseq!(o1::Any,o2::Any,e3::Expr,e4::Expr)
    Expr(:call,:randsubseq!,expr(o1),expr(o2),e3,e4)
end
function randsubseq!(e1::Expr,o2::Any,e3::Expr,e4::Expr)
    Expr(:call,:randsubseq!,e1,expr(o2),e3,e4)
end
function randsubseq!(o1::Any,e2::Expr,e3::Expr,e4::Expr)
    Expr(:call,:randsubseq!,expr(o1),e2,e3,e4)
end
function randsubseq!(e1::Expr,e2::Expr,e3::Expr,e4::Expr)
    Expr(:call,:randsubseq!,e1,e2,e3,e4)
end
function randsubseq!(e1::Expr,o2::Any,o3::Any)
    Expr(:call,:randsubseq!,e1,expr(o2),expr(o3))
end
function randsubseq!(o1::Any,e2::Expr,o3::Any)
    Expr(:call,:randsubseq!,expr(o1),e2,expr(o3))
end
function randsubseq!(e1::Expr,e2::Expr,o3::Any)
    Expr(:call,:randsubseq!,e1,e2,expr(o3))
end
function randsubseq!(o1::Any,o2::Any,e3::Expr)
    Expr(:call,:randsubseq!,expr(o1),expr(o2),e3)
end
function randsubseq!(e1::Expr,o2::Any,e3::Expr)
    Expr(:call,:randsubseq!,e1,expr(o2),e3)
end
function randsubseq!(o1::Any,e2::Expr,e3::Expr)
    Expr(:call,:randsubseq!,expr(o1),e2,e3)
end
function randsubseq!(e1::Expr,e2::Expr,e3::Expr)
    Expr(:call,:randsubseq!,e1,e2,e3)
end
function range(o1::Any,e2::Expr)
    Expr(:call,:range,expr(o1),e2)
end
function range(e1::Expr,e2::Expr)
    Expr(:call,:range,e1,e2)
end
function range(o1::Any,o2::Any,e3::Expr)
    Expr(:call,:range,expr(o1),expr(o2),e3)
end
function range(o1::Any,e2::Expr,e3::Expr)
    Expr(:call,:range,expr(o1),e2,e3)
end
function range(e1::Expr,o2::Any,e3::Expr)
    Expr(:call,:range,e1,expr(o2),e3)
end
function range(e1::Expr,e2::Expr,e3::Expr)
    Expr(:call,:range,e1,e2,e3)
end
function rank(e1::Expr,o2::Any)
    Expr(:call,:rank,e1,expr(o2))
end
function rank(o1::Any,e2::Expr)
    Expr(:call,:rank,expr(o1),e2)
end
function rank(e1::Expr,e2::Expr)
    Expr(:call,:rank,e1,e2)
end
function rank(e1::Expr)
    Expr(:call,:rank,e1)
end
function rationalize(e1::Expr,o2::Any)
    Expr(:call,:rationalize,e1,expr(o2))
end
function rationalize(o1::Any,e2::Expr)
    Expr(:call,:rationalize,expr(o1),e2)
end
function rationalize(e1::Expr,e2::Expr)
    Expr(:call,:rationalize,e1,e2)
end
function rationalize(e1::Expr,o2::Any,o3::Any)
    Expr(:call,:rationalize,e1,expr(o2),expr(o3))
end
function rationalize(o1::Any,e2::Expr,o3::Any)
    Expr(:call,:rationalize,expr(o1),e2,expr(o3))
end
function rationalize(e1::Expr,e2::Expr,o3::Any)
    Expr(:call,:rationalize,e1,e2,expr(o3))
end
function rationalize(o1::Any,o2::Any,e3::Expr)
    Expr(:call,:rationalize,expr(o1),expr(o2),e3)
end
function rationalize(e1::Expr,o2::Any,e3::Expr)
    Expr(:call,:rationalize,e1,expr(o2),e3)
end
function rationalize(o1::Any,e2::Expr,e3::Expr)
    Expr(:call,:rationalize,expr(o1),e2,e3)
end
function rationalize(e1::Expr,e2::Expr,e3::Expr)
    Expr(:call,:rationalize,e1,e2,e3)
end
function rationalize(e1::Expr)
    Expr(:call,:rationalize,e1)
end
function read(e1::Expr,o2::Any,o3::Any,o4::Any)
    Expr(:call,:read,e1,expr(o2),expr(o3),expr(o4))
end
function read(o1::Any,e2::Expr,o3::Any,o4::Any)
    Expr(:call,:read,expr(o1),e2,expr(o3),expr(o4))
end
function read(e1::Expr,e2::Expr,o3::Any,o4::Any)
    Expr(:call,:read,e1,e2,expr(o3),expr(o4))
end
function read(o1::Any,o2::Any,e3::Expr,o4::Any)
    Expr(:call,:read,expr(o1),expr(o2),e3,expr(o4))
end
function read(e1::Expr,o2::Any,e3::Expr,o4::Any)
    Expr(:call,:read,e1,expr(o2),e3,expr(o4))
end
function read(o1::Any,e2::Expr,e3::Expr,o4::Any)
    Expr(:call,:read,expr(o1),e2,e3,expr(o4))
end
function read(e1::Expr,e2::Expr,e3::Expr,o4::Any)
    Expr(:call,:read,e1,e2,e3,expr(o4))
end
function read(o1::Any,o2::Any,o3::Any,e4::Expr)
    Expr(:call,:read,expr(o1),expr(o2),expr(o3),e4)
end
function read(e1::Expr,o2::Any,o3::Any,e4::Expr)
    Expr(:call,:read,e1,expr(o2),expr(o3),e4)
end
function read(o1::Any,e2::Expr,o3::Any,e4::Expr)
    Expr(:call,:read,expr(o1),e2,expr(o3),e4)
end
function read(e1::Expr,e2::Expr,o3::Any,e4::Expr)
    Expr(:call,:read,e1,e2,expr(o3),e4)
end
function read(o1::Any,o2::Any,e3::Expr,e4::Expr)
    Expr(:call,:read,expr(o1),expr(o2),e3,e4)
end
function read(e1::Expr,o2::Any,e3::Expr,e4::Expr)
    Expr(:call,:read,e1,expr(o2),e3,e4)
end
function read(o1::Any,e2::Expr,e3::Expr,e4::Expr)
    Expr(:call,:read,expr(o1),e2,e3,e4)
end
function read(e1::Expr,e2::Expr,e3::Expr,e4::Expr)
    Expr(:call,:read,e1,e2,e3,e4)
end
function read(e1::Expr,o2::Any)
    Expr(:call,:read,e1,expr(o2))
end
function read(e1::Expr,e2::Expr)
    Expr(:call,:read,e1,e2)
end
function read(e1::Expr,o2::Any,o3::Any)
    Expr(:call,:read,e1,expr(o2),expr(o3))
end
function read(o1::Any,e2::Expr,o3::Any)
    Expr(:call,:read,expr(o1),e2,expr(o3))
end
function read(e1::Expr,e2::Expr,o3::Any)
    Expr(:call,:read,e1,e2,expr(o3))
end
function read(o1::Any,o2::Any,e3::Expr)
    Expr(:call,:read,expr(o1),expr(o2),e3)
end
function read(e1::Expr,o2::Any,e3::Expr)
    Expr(:call,:read,e1,expr(o2),e3)
end
function read(o1::Any,e2::Expr,e3::Expr)
    Expr(:call,:read,expr(o1),e2,e3)
end
function read(e1::Expr,e2::Expr,e3::Expr)
    Expr(:call,:read,e1,e2,e3)
end
function read(e1::Expr)
    Expr(:call,:read,e1)
end
function read!(e1::Expr,o2::Any)
    Expr(:call,:read!,e1,expr(o2))
end
function read!(e1::Expr,e2::Expr)
    Expr(:call,:read!,e1,e2)
end
function readandwrite(e1::Expr)
    Expr(:call,:readandwrite,e1)
end
function readavailable(e1::Expr)
    Expr(:call,:readavailable,e1)
end
function readbytes!(e1::Expr,o2::Any)
    Expr(:call,:readbytes!,e1,expr(o2))
end
function readbytes!(o1::Any,e2::Expr)
    Expr(:call,:readbytes!,expr(o1),e2)
end
function readbytes!(e1::Expr,e2::Expr)
    Expr(:call,:readbytes!,e1,e2)
end
function readbytes!(e1::Expr,o2::Any,o3::Any)
    Expr(:call,:readbytes!,e1,expr(o2),expr(o3))
end
function readbytes!(o1::Any,e2::Expr,o3::Any)
    Expr(:call,:readbytes!,expr(o1),e2,expr(o3))
end
function readbytes!(e1::Expr,e2::Expr,o3::Any)
    Expr(:call,:readbytes!,e1,e2,expr(o3))
end
function readbytes!(e1::Expr,e2::Expr,e3::Expr)
    Expr(:call,:readbytes!,e1,e2,e3)
end
function readcsv(o1::Any,e2::Expr)
    Expr(:call,:readcsv,expr(o1),e2)
end
function readcsv(e1::Expr,e2::Expr)
    Expr(:call,:readcsv,e1,e2)
end
function readdir(e1::Expr)
    Expr(:call,:readdir,e1)
end
function readdlm(o1::Any,e2::Expr,o3::Any,o4::Any)
    Expr(:call,:readdlm,expr(o1),e2,expr(o3),expr(o4))
end
function readdlm(o1::Any,o2::Any,e3::Expr,o4::Any)
    Expr(:call,:readdlm,expr(o1),expr(o2),e3,expr(o4))
end
function readdlm(o1::Any,e2::Expr,e3::Expr,o4::Any)
    Expr(:call,:readdlm,expr(o1),e2,e3,expr(o4))
end
function readdlm(o1::Any,o2::Any,o3::Any,e4::Expr)
    Expr(:call,:readdlm,expr(o1),expr(o2),expr(o3),e4)
end
function readdlm(o1::Any,e2::Expr,o3::Any,e4::Expr)
    Expr(:call,:readdlm,expr(o1),e2,expr(o3),e4)
end
function readdlm(o1::Any,o2::Any,e3::Expr,e4::Expr)
    Expr(:call,:readdlm,expr(o1),expr(o2),e3,e4)
end
function readdlm(o1::Any,e2::Expr,e3::Expr,e4::Expr)
    Expr(:call,:readdlm,expr(o1),e2,e3,e4)
end
function readdlm(e1::Expr,e2::Expr,e3::Expr,e4::Expr)
    Expr(:call,:readdlm,e1,e2,e3,e4)
end
function readdlm(o1::Any,e2::Expr)
    Expr(:call,:readdlm,expr(o1),e2)
end
function readdlm(e1::Expr,e2::Expr)
    Expr(:call,:readdlm,e1,e2)
end
function readdlm(o1::Any,e2::Expr,o3::Any)
    Expr(:call,:readdlm,expr(o1),e2,expr(o3))
end
function readdlm(o1::Any,o2::Any,e3::Expr)
    Expr(:call,:readdlm,expr(o1),expr(o2),e3)
end
function readdlm(o1::Any,e2::Expr,e3::Expr)
    Expr(:call,:readdlm,expr(o1),e2,e3)
end
function readdlm(e1::Expr,e2::Expr,e3::Expr)
    Expr(:call,:readdlm,e1,e2,e3)
end
function readline(e1::Expr)
    Expr(:call,:readline,e1)
end
function readlink(e1::Expr)
    Expr(:call,:readlink,e1)
end
function readstring(e1::Expr,o2::Any)
    Expr(:call,:readstring,e1,expr(o2))
end
function readstring(o1::Any,e2::Expr)
    Expr(:call,:readstring,expr(o1),e2)
end
function readstring(e1::Expr,e2::Expr)
    Expr(:call,:readstring,e1,e2)
end
function readstring(e1::Expr)
    Expr(:call,:readstring,e1)
end
function readuntil(e1::Expr,o2::Any)
    Expr(:call,:readuntil,e1,expr(o2))
end
function readuntil(e1::Expr,e2::Expr)
    Expr(:call,:readuntil,e1,e2)
end
function real(e1::Expr)
    Expr(:call,:real,e1)
end
function realmax(e1::Expr)
    Expr(:call,:realmax,e1)
end
function realmin(e1::Expr)
    Expr(:call,:realmin,e1)
end
function realpath(e1::Expr)
    Expr(:call,:realpath,e1)
end
function recv(e1::Expr)
    Expr(:call,:recv,e1)
end
function recvfrom(e1::Expr)
    Expr(:call,:recvfrom,e1)
end
function redirect_stderr(e1::Expr,o2::Any)
    Expr(:call,:redirect_stderr,e1,expr(o2))
end
function redirect_stderr(e1::Expr,e2::Expr)
    Expr(:call,:redirect_stderr,e1,e2)
end
function redirect_stderr(e1::Expr)
    Expr(:call,:redirect_stderr,e1)
end
function redirect_stdin(e1::Expr,o2::Any)
    Expr(:call,:redirect_stdin,e1,expr(o2))
end
function redirect_stdin(e1::Expr,e2::Expr)
    Expr(:call,:redirect_stdin,e1,e2)
end
function redirect_stdin(e1::Expr)
    Expr(:call,:redirect_stdin,e1)
end
function redirect_stdout(e1::Expr,o2::Any)
    Expr(:call,:redirect_stdout,e1,expr(o2))
end
function redirect_stdout(e1::Expr,e2::Expr)
    Expr(:call,:redirect_stdout,e1,e2)
end
function redirect_stdout(e1::Expr)
    Expr(:call,:redirect_stdout,e1)
end
function redisplay(e1::Expr,o2::Any)
    Expr(:call,:redisplay,e1,expr(o2))
end
function redisplay(e1::Expr,e2::Expr)
    Expr(:call,:redisplay,e1,e2)
end
function redisplay(e1::Expr,o2::Any,o3::Any)
    Expr(:call,:redisplay,e1,expr(o2),expr(o3))
end
function redisplay(o1::Any,e2::Expr,o3::Any)
    Expr(:call,:redisplay,expr(o1),e2,expr(o3))
end
function redisplay(e1::Expr,e2::Expr,o3::Any)
    Expr(:call,:redisplay,e1,e2,expr(o3))
end
function redisplay(e1::Expr,e2::Expr,e3::Expr)
    Expr(:call,:redisplay,e1,e2,e3)
end
function reducedim(o1::Any,e2::Expr,o3::Any,o4::Any)
    Expr(:call,:reducedim,expr(o1),e2,expr(o3),expr(o4))
end
function reducedim(o1::Any,e2::Expr,o3::Any,e4::Expr)
    Expr(:call,:reducedim,expr(o1),e2,expr(o3),e4)
end
function reducedim(o1::Any,e2::Expr,e3::Expr,o4::Any)
    Expr(:call,:reducedim,expr(o1),e2,e3,expr(o4))
end
function reducedim(o1::Any,e2::Expr,e3::Expr,e4::Expr)
    Expr(:call,:reducedim,expr(o1),e2,e3,e4)
end
function reducedim(e1::Expr,e2::Expr,o3::Any,o4::Any)
    Expr(:call,:reducedim,e1,e2,expr(o3),expr(o4))
end
function reducedim(e1::Expr,e2::Expr,o3::Any,e4::Expr)
    Expr(:call,:reducedim,e1,e2,expr(o3),e4)
end
function reducedim(e1::Expr,e2::Expr,e3::Expr,o4::Any)
    Expr(:call,:reducedim,e1,e2,e3,expr(o4))
end
function reducedim(e1::Expr,e2::Expr,e3::Expr,e4::Expr)
    Expr(:call,:reducedim,e1,e2,e3,e4)
end
function reducedim(o1::Any,e2::Expr,o3::Any)
    Expr(:call,:reducedim,expr(o1),e2,expr(o3))
end
function reducedim(o1::Any,e2::Expr,e3::Expr)
    Expr(:call,:reducedim,expr(o1),e2,e3)
end
function reducedim(e1::Expr,e2::Expr,o3::Any)
    Expr(:call,:reducedim,e1,e2,expr(o3))
end
function reducedim(e1::Expr,e2::Expr,e3::Expr)
    Expr(:call,:reducedim,e1,e2,e3)
end
function reenable_sigint(e1::Expr)
    Expr(:call,:reenable_sigint,e1)
end
function reinterpret(e1::Expr,o2::Any)
    Expr(:call,:reinterpret,e1,expr(o2))
end
function reinterpret(e1::Expr,e2::Expr)
    Expr(:call,:reinterpret,e1,e2)
end
function reinterpret(e1::Expr,o2::Any,o3::Any)
    Expr(:call,:reinterpret,e1,expr(o2),expr(o3))
end
function reinterpret(o1::Any,e2::Expr,o3::Any)
    Expr(:call,:reinterpret,expr(o1),e2,expr(o3))
end
function reinterpret(e1::Expr,e2::Expr,o3::Any)
    Expr(:call,:reinterpret,e1,e2,expr(o3))
end
function reinterpret(o1::Any,o2::Any,e3::Expr)
    Expr(:call,:reinterpret,expr(o1),expr(o2),e3)
end
function reinterpret(e1::Expr,o2::Any,e3::Expr)
    Expr(:call,:reinterpret,e1,expr(o2),e3)
end
function reinterpret(o1::Any,e2::Expr,e3::Expr)
    Expr(:call,:reinterpret,expr(o1),e2,e3)
end
function reinterpret(e1::Expr,e2::Expr,e3::Expr)
    Expr(:call,:reinterpret,e1,e2,e3)
end
function reload(e1::Expr)
    Expr(:call,:reload,e1)
end
function relpath(e1::Expr,o2::Any)
    Expr(:call,:relpath,e1,expr(o2))
end
function relpath(o1::Any,e2::Expr)
    Expr(:call,:relpath,expr(o1),e2)
end
function relpath(e1::Expr,e2::Expr)
    Expr(:call,:relpath,e1,e2)
end
function relpath(e1::Expr)
    Expr(:call,:relpath,e1)
end
function rem(o1::Any,e2::Expr)
    Expr(:call,:rem,expr(o1),e2)
end
function rem(e1::Expr,e2::Expr)
    Expr(:call,:rem,e1,e2)
end
function rem1(e1::Expr,o2::Any)
    Expr(:call,:rem1,e1,expr(o2))
end
function rem1(o1::Any,e2::Expr)
    Expr(:call,:rem1,expr(o1),e2)
end
function rem1(e1::Expr,e2::Expr)
    Expr(:call,:rem1,e1,e2)
end
function remote(e1::Expr,o2::Any)
    Expr(:call,:remote,e1,expr(o2))
end
function remote(e1::Expr,e2::Expr)
    Expr(:call,:remote,e1,e2)
end
function remotecall(o1::Any,e2::Expr,o3::Any)
    Expr(:call,:remotecall,expr(o1),e2,expr(o3))
end
function remotecall(o1::Any,o2::Any,e3::Expr)
    Expr(:call,:remotecall,expr(o1),expr(o2),e3)
end
function remotecall(o1::Any,e2::Expr,e3::Expr)
    Expr(:call,:remotecall,expr(o1),e2,e3)
end
function remotecall(e1::Expr,e2::Expr,e3::Expr)
    Expr(:call,:remotecall,e1,e2,e3)
end
function remotecall_fetch(o1::Any,e2::Expr,o3::Any)
    Expr(:call,:remotecall_fetch,expr(o1),e2,expr(o3))
end
function remotecall_fetch(o1::Any,o2::Any,e3::Expr)
    Expr(:call,:remotecall_fetch,expr(o1),expr(o2),e3)
end
function remotecall_fetch(o1::Any,e2::Expr,e3::Expr)
    Expr(:call,:remotecall_fetch,expr(o1),e2,e3)
end
function remotecall_fetch(e1::Expr,e2::Expr,e3::Expr)
    Expr(:call,:remotecall_fetch,e1,e2,e3)
end
function remotecall_wait(o1::Any,e2::Expr,o3::Any)
    Expr(:call,:remotecall_wait,expr(o1),e2,expr(o3))
end
function remotecall_wait(o1::Any,o2::Any,e3::Expr)
    Expr(:call,:remotecall_wait,expr(o1),expr(o2),e3)
end
function remotecall_wait(o1::Any,e2::Expr,e3::Expr)
    Expr(:call,:remotecall_wait,expr(o1),e2,e3)
end
function remotecall_wait(e1::Expr,e2::Expr,e3::Expr)
    Expr(:call,:remotecall_wait,e1,e2,e3)
end
function repeat(o1::Any,e2::Expr)
    Expr(:call,:repeat,expr(o1),e2)
end
function repeat(e1::Expr,e2::Expr)
    Expr(:call,:repeat,e1,e2)
end
function repeat(e1::Expr)
    Expr(:call,:repeat,e1)
end
function repeated(o1::Any,e2::Expr)
    Expr(:call,:repeated,expr(o1),e2)
end
function repeated(e1::Expr,e2::Expr)
    Expr(:call,:repeated,e1,e2)
end
function replace(e1::Expr,o2::Any,o3::Any,o4::Any)
    Expr(:call,:replace,e1,expr(o2),expr(o3),expr(o4))
end
function replace(o1::Any,o2::Any,o3::Any,e4::Expr)
    Expr(:call,:replace,expr(o1),expr(o2),expr(o3),e4)
end
function replace(e1::Expr,o2::Any,o3::Any,e4::Expr)
    Expr(:call,:replace,e1,expr(o2),expr(o3),e4)
end
function replace(e1::Expr,e2::Expr,o3::Any,e4::Expr)
    Expr(:call,:replace,e1,e2,expr(o3),e4)
end
function replace(e1::Expr,o2::Any,e3::Expr,e4::Expr)
    Expr(:call,:replace,e1,expr(o2),e3,e4)
end
function replace(e1::Expr,e2::Expr,e3::Expr,e4::Expr)
    Expr(:call,:replace,e1,e2,e3,e4)
end
function replace(e1::Expr,o2::Any,o3::Any)
    Expr(:call,:replace,e1,expr(o2),expr(o3))
end
function replace(e1::Expr,e2::Expr,o3::Any)
    Expr(:call,:replace,e1,e2,expr(o3))
end
function replace(e1::Expr,o2::Any,e3::Expr)
    Expr(:call,:replace,e1,expr(o2),e3)
end
function replace(e1::Expr,e2::Expr,e3::Expr)
    Expr(:call,:replace,e1,e2,e3)
end
function repmat(e1::Expr,o2::Any)
    Expr(:call,:repmat,e1,expr(o2))
end
function repmat(o1::Any,e2::Expr)
    Expr(:call,:repmat,expr(o1),e2)
end
function repmat(e1::Expr,e2::Expr)
    Expr(:call,:repmat,e1,e2)
end
function repmat(e1::Expr,o2::Any,o3::Any)
    Expr(:call,:repmat,e1,expr(o2),expr(o3))
end
function repmat(o1::Any,e2::Expr,o3::Any)
    Expr(:call,:repmat,expr(o1),e2,expr(o3))
end
function repmat(e1::Expr,e2::Expr,o3::Any)
    Expr(:call,:repmat,e1,e2,expr(o3))
end
function repmat(o1::Any,o2::Any,e3::Expr)
    Expr(:call,:repmat,expr(o1),expr(o2),e3)
end
function repmat(e1::Expr,o2::Any,e3::Expr)
    Expr(:call,:repmat,e1,expr(o2),e3)
end
function repmat(o1::Any,e2::Expr,e3::Expr)
    Expr(:call,:repmat,expr(o1),e2,e3)
end
function repmat(e1::Expr,e2::Expr,e3::Expr)
    Expr(:call,:repmat,e1,e2,e3)
end
function reprmime(e1::Expr,o2::Any)
    Expr(:call,:reprmime,e1,expr(o2))
end
function reprmime(e1::Expr,e2::Expr)
    Expr(:call,:reprmime,e1,e2)
end
function reset(e1::Expr)
    Expr(:call,:reset,e1)
end
function reshape(e1::Expr,o2::Any)
    Expr(:call,:reshape,e1,expr(o2))
end
function reshape(o1::Any,e2::Expr)
    Expr(:call,:reshape,expr(o1),e2)
end
function reshape(e1::Expr,e2::Expr)
    Expr(:call,:reshape,e1,e2)
end
function resize!(e1::Expr,o2::Any)
    Expr(:call,:resize!,e1,expr(o2))
end
function resize!(o1::Any,e2::Expr)
    Expr(:call,:resize!,expr(o1),e2)
end
function resize!(e1::Expr,e2::Expr)
    Expr(:call,:resize!,e1,e2)
end
function retry(e1::Expr,o2::Any)
    Expr(:call,:retry,e1,expr(o2))
end
function retry(o1::Any,e2::Expr)
    Expr(:call,:retry,expr(o1),e2)
end
function retry(e1::Expr,e2::Expr)
    Expr(:call,:retry,e1,e2)
end
function retry(e1::Expr)
    Expr(:call,:retry,e1)
end
function reverse(e1::Expr,o2::Any)
    Expr(:call,:reverse,e1,expr(o2))
end
function reverse(e1::Expr,e2::Expr)
    Expr(:call,:reverse,e1,e2)
end
function reverse(e1::Expr,o2::Any,o3::Any)
    Expr(:call,:reverse,e1,expr(o2),expr(o3))
end
function reverse(e1::Expr,e2::Expr,o3::Any)
    Expr(:call,:reverse,e1,e2,expr(o3))
end
function reverse(e1::Expr,o2::Any,e3::Expr)
    Expr(:call,:reverse,e1,expr(o2),e3)
end
function reverse(e1::Expr,e2::Expr,e3::Expr)
    Expr(:call,:reverse,e1,e2,e3)
end
function reverse(e1::Expr)
    Expr(:call,:reverse,e1)
end
function reverse!(e1::Expr,o2::Any)
    Expr(:call,:reverse!,e1,expr(o2))
end
function reverse!(e1::Expr,e2::Expr)
    Expr(:call,:reverse!,e1,e2)
end
function reverse!(e1::Expr,o2::Any,o3::Any)
    Expr(:call,:reverse!,e1,expr(o2),expr(o3))
end
function reverse!(e1::Expr,e2::Expr,o3::Any)
    Expr(:call,:reverse!,e1,e2,expr(o3))
end
function reverse!(e1::Expr,o2::Any,e3::Expr)
    Expr(:call,:reverse!,e1,expr(o2),e3)
end
function reverse!(e1::Expr,e2::Expr,e3::Expr)
    Expr(:call,:reverse!,e1,e2,e3)
end
function reverse!(e1::Expr)
    Expr(:call,:reverse!,e1)
end
function reverseind(e1::Expr,o2::Any)
    Expr(:call,:reverseind,e1,expr(o2))
end
function reverseind(e1::Expr,e2::Expr)
    Expr(:call,:reverseind,e1,e2)
end
function rfft(e1::Expr,o2::Any)
    Expr(:call,:rfft,e1,expr(o2))
end
function rfft(e1::Expr,e2::Expr)
    Expr(:call,:rfft,e1,e2)
end
function rfft(e1::Expr)
    Expr(:call,:rfft,e1)
end
function rm(e1::Expr)
    Expr(:call,:rm,e1)
end
function rol(e1::Expr,o2::Any)
    Expr(:call,:rol,e1,expr(o2))
end
function rol(o1::Any,e2::Expr)
    Expr(:call,:rol,expr(o1),e2)
end
function rol(e1::Expr,e2::Expr)
    Expr(:call,:rol,e1,e2)
end
function rol!(e1::Expr,o2::Any)
    Expr(:call,:rol!,e1,expr(o2))
end
function rol!(o1::Any,e2::Expr)
    Expr(:call,:rol!,expr(o1),e2)
end
function rol!(e1::Expr,e2::Expr)
    Expr(:call,:rol!,e1,e2)
end
function rol!(e1::Expr,o2::Any,o3::Any)
    Expr(:call,:rol!,e1,expr(o2),expr(o3))
end
function rol!(o1::Any,e2::Expr,o3::Any)
    Expr(:call,:rol!,expr(o1),e2,expr(o3))
end
function rol!(e1::Expr,e2::Expr,o3::Any)
    Expr(:call,:rol!,e1,e2,expr(o3))
end
function rol!(o1::Any,o2::Any,e3::Expr)
    Expr(:call,:rol!,expr(o1),expr(o2),e3)
end
function rol!(e1::Expr,o2::Any,e3::Expr)
    Expr(:call,:rol!,e1,expr(o2),e3)
end
function rol!(o1::Any,e2::Expr,e3::Expr)
    Expr(:call,:rol!,expr(o1),e2,e3)
end
function rol!(e1::Expr,e2::Expr,e3::Expr)
    Expr(:call,:rol!,e1,e2,e3)
end
function ror(e1::Expr,o2::Any)
    Expr(:call,:ror,e1,expr(o2))
end
function ror(o1::Any,e2::Expr)
    Expr(:call,:ror,expr(o1),e2)
end
function ror(e1::Expr,e2::Expr)
    Expr(:call,:ror,e1,e2)
end
function ror!(e1::Expr,o2::Any)
    Expr(:call,:ror!,e1,expr(o2))
end
function ror!(o1::Any,e2::Expr)
    Expr(:call,:ror!,expr(o1),e2)
end
function ror!(e1::Expr,e2::Expr)
    Expr(:call,:ror!,e1,e2)
end
function ror!(e1::Expr,o2::Any,o3::Any)
    Expr(:call,:ror!,e1,expr(o2),expr(o3))
end
function ror!(o1::Any,e2::Expr,o3::Any)
    Expr(:call,:ror!,expr(o1),e2,expr(o3))
end
function ror!(e1::Expr,e2::Expr,o3::Any)
    Expr(:call,:ror!,e1,e2,expr(o3))
end
function ror!(o1::Any,o2::Any,e3::Expr)
    Expr(:call,:ror!,expr(o1),expr(o2),e3)
end
function ror!(e1::Expr,o2::Any,e3::Expr)
    Expr(:call,:ror!,e1,expr(o2),e3)
end
function ror!(o1::Any,e2::Expr,e3::Expr)
    Expr(:call,:ror!,expr(o1),e2,e3)
end
function ror!(e1::Expr,e2::Expr,e3::Expr)
    Expr(:call,:ror!,e1,e2,e3)
end
function rot180(e1::Expr,o2::Any)
    Expr(:call,:rot180,e1,expr(o2))
end
function rot180(o1::Any,e2::Expr)
    Expr(:call,:rot180,expr(o1),e2)
end
function rot180(e1::Expr,e2::Expr)
    Expr(:call,:rot180,e1,e2)
end
function rot180(e1::Expr)
    Expr(:call,:rot180,e1)
end
function rotl90(e1::Expr,o2::Any)
    Expr(:call,:rotl90,e1,expr(o2))
end
function rotl90(o1::Any,e2::Expr)
    Expr(:call,:rotl90,expr(o1),e2)
end
function rotl90(e1::Expr,e2::Expr)
    Expr(:call,:rotl90,e1,e2)
end
function rotl90(e1::Expr)
    Expr(:call,:rotl90,e1)
end
function rotr90(e1::Expr,o2::Any)
    Expr(:call,:rotr90,e1,expr(o2))
end
function rotr90(o1::Any,e2::Expr)
    Expr(:call,:rotr90,expr(o1),e2)
end
function rotr90(e1::Expr,e2::Expr)
    Expr(:call,:rotr90,e1,e2)
end
function rotr90(e1::Expr)
    Expr(:call,:rotr90,e1)
end
function round(e1::Expr,o2::Any)
    Expr(:call,:round,e1,expr(o2))
end
function round(o1::Any,e2::Expr)
    Expr(:call,:round,expr(o1),e2)
end
function round(e1::Expr,e2::Expr)
    Expr(:call,:round,e1,e2)
end
function round(e1::Expr,o2::Any,o3::Any)
    Expr(:call,:round,e1,expr(o2),expr(o3))
end
function round(o1::Any,e2::Expr,o3::Any)
    Expr(:call,:round,expr(o1),e2,expr(o3))
end
function round(e1::Expr,e2::Expr,o3::Any)
    Expr(:call,:round,e1,e2,expr(o3))
end
function round(o1::Any,o2::Any,e3::Expr)
    Expr(:call,:round,expr(o1),expr(o2),e3)
end
function round(e1::Expr,o2::Any,e3::Expr)
    Expr(:call,:round,e1,expr(o2),e3)
end
function round(o1::Any,e2::Expr,e3::Expr)
    Expr(:call,:round,expr(o1),e2,e3)
end
function round(e1::Expr,e2::Expr,e3::Expr)
    Expr(:call,:round,e1,e2,e3)
end
function round(e1::Expr)
    Expr(:call,:round,e1)
end
function rounding(e1::Expr)
    Expr(:call,:rounding,e1)
end
function rowvals(e1::Expr)
    Expr(:call,:rowvals,e1)
end
function rpad(o1::Any,e2::Expr)
    Expr(:call,:rpad,expr(o1),e2)
end
function rpad(e1::Expr,e2::Expr)
    Expr(:call,:rpad,e1,e2)
end
function rpad(o1::Any,e2::Expr,o3::Any)
    Expr(:call,:rpad,expr(o1),e2,expr(o3))
end
function rpad(o1::Any,e2::Expr,e3::Expr)
    Expr(:call,:rpad,expr(o1),e2,e3)
end
function rpad(e1::Expr,e2::Expr,o3::Any)
    Expr(:call,:rpad,e1,e2,expr(o3))
end
function rpad(e1::Expr,e2::Expr,e3::Expr)
    Expr(:call,:rpad,e1,e2,e3)
end
function rsearch(e1::Expr,o2::Any)
    Expr(:call,:rsearch,e1,expr(o2))
end
function rsearch(o1::Any,e2::Expr)
    Expr(:call,:rsearch,expr(o1),e2)
end
function rsearch(e1::Expr,e2::Expr)
    Expr(:call,:rsearch,e1,e2)
end
function rsearch(e1::Expr,o2::Any,o3::Any)
    Expr(:call,:rsearch,e1,expr(o2),expr(o3))
end
function rsearch(o1::Any,e2::Expr,o3::Any)
    Expr(:call,:rsearch,expr(o1),e2,expr(o3))
end
function rsearch(e1::Expr,e2::Expr,o3::Any)
    Expr(:call,:rsearch,e1,e2,expr(o3))
end
function rsearch(o1::Any,o2::Any,e3::Expr)
    Expr(:call,:rsearch,expr(o1),expr(o2),e3)
end
function rsearch(e1::Expr,o2::Any,e3::Expr)
    Expr(:call,:rsearch,e1,expr(o2),e3)
end
function rsearch(o1::Any,e2::Expr,e3::Expr)
    Expr(:call,:rsearch,expr(o1),e2,e3)
end
function rsearch(e1::Expr,e2::Expr,e3::Expr)
    Expr(:call,:rsearch,e1,e2,e3)
end
function rsearchindex(e1::Expr,o2::Any)
    Expr(:call,:rsearchindex,e1,expr(o2))
end
function rsearchindex(o1::Any,e2::Expr)
    Expr(:call,:rsearchindex,expr(o1),e2)
end
function rsearchindex(e1::Expr,e2::Expr)
    Expr(:call,:rsearchindex,e1,e2)
end
function rsearchindex(e1::Expr,o2::Any,o3::Any)
    Expr(:call,:rsearchindex,e1,expr(o2),expr(o3))
end
function rsearchindex(o1::Any,e2::Expr,o3::Any)
    Expr(:call,:rsearchindex,expr(o1),e2,expr(o3))
end
function rsearchindex(e1::Expr,e2::Expr,o3::Any)
    Expr(:call,:rsearchindex,e1,e2,expr(o3))
end
function rsearchindex(e1::Expr,e2::Expr,e3::Expr)
    Expr(:call,:rsearchindex,e1,e2,e3)
end
function rsplit(e1::Expr,o2::Any)
    Expr(:call,:rsplit,e1,expr(o2))
end
function rsplit(e1::Expr,e2::Expr)
    Expr(:call,:rsplit,e1,e2)
end
function rstrip(e1::Expr,o2::Any)
    Expr(:call,:rstrip,e1,expr(o2))
end
function rstrip(o1::Any,e2::Expr)
    Expr(:call,:rstrip,expr(o1),e2)
end
function rstrip(e1::Expr,e2::Expr)
    Expr(:call,:rstrip,e1,e2)
end
function rstrip(e1::Expr)
    Expr(:call,:rstrip,e1)
end
function run(e1::Expr,o2::Any)
    Expr(:call,:run,e1,expr(o2))
end
function run(o1::Any,e2::Expr)
    Expr(:call,:run,expr(o1),e2)
end
function run(e1::Expr,e2::Expr)
    Expr(:call,:run,e1,e2)
end
function scale(e1::Expr,o2::Any)
    Expr(:call,:scale,e1,expr(o2))
end
function scale(o1::Any,e2::Expr)
    Expr(:call,:scale,expr(o1),e2)
end
function scale(e1::Expr,e2::Expr)
    Expr(:call,:scale,e1,e2)
end
function scale!(e1::Expr,o2::Any)
    Expr(:call,:scale!,e1,expr(o2))
end
function scale!(o1::Any,e2::Expr)
    Expr(:call,:scale!,expr(o1),e2)
end
function scale!(e1::Expr,e2::Expr)
    Expr(:call,:scale!,e1,e2)
end
function scale!(e1::Expr,o2::Any,o3::Any)
    Expr(:call,:scale!,e1,expr(o2),expr(o3))
end
function scale!(o1::Any,e2::Expr,o3::Any)
    Expr(:call,:scale!,expr(o1),e2,expr(o3))
end
function scale!(e1::Expr,e2::Expr,o3::Any)
    Expr(:call,:scale!,e1,e2,expr(o3))
end
function scale!(o1::Any,o2::Any,e3::Expr)
    Expr(:call,:scale!,expr(o1),expr(o2),e3)
end
function scale!(e1::Expr,o2::Any,e3::Expr)
    Expr(:call,:scale!,e1,expr(o2),e3)
end
function scale!(o1::Any,e2::Expr,e3::Expr)
    Expr(:call,:scale!,expr(o1),e2,e3)
end
function scale!(e1::Expr,e2::Expr,e3::Expr)
    Expr(:call,:scale!,e1,e2,e3)
end
function schedule(e1::Expr,o2::Any)
    Expr(:call,:schedule,e1,expr(o2))
end
function schedule(e1::Expr,e2::Expr)
    Expr(:call,:schedule,e1,e2)
end
function schedule(e1::Expr)
    Expr(:call,:schedule,e1)
end
function schur(e1::Expr,o2::Any)
    Expr(:call,:schur,e1,expr(o2))
end
function schur(o1::Any,e2::Expr)
    Expr(:call,:schur,expr(o1),e2)
end
function schur(e1::Expr,e2::Expr)
    Expr(:call,:schur,e1,e2)
end
function schur(e1::Expr)
    Expr(:call,:schur,e1)
end
function schurfact(e1::Expr,o2::Any)
    Expr(:call,:schurfact,e1,expr(o2))
end
function schurfact(o1::Any,e2::Expr)
    Expr(:call,:schurfact,expr(o1),e2)
end
function schurfact(e1::Expr,e2::Expr)
    Expr(:call,:schurfact,e1,e2)
end
function schurfact(e1::Expr)
    Expr(:call,:schurfact,e1)
end
function schurfact!(e1::Expr,o2::Any)
    Expr(:call,:schurfact!,e1,expr(o2))
end
function schurfact!(o1::Any,e2::Expr)
    Expr(:call,:schurfact!,expr(o1),e2)
end
function schurfact!(e1::Expr,e2::Expr)
    Expr(:call,:schurfact!,e1,e2)
end
function schurfact!(e1::Expr)
    Expr(:call,:schurfact!,e1)
end
function sdata(e1::Expr)
    Expr(:call,:sdata,e1)
end
function search(e1::Expr,o2::Any)
    Expr(:call,:search,e1,expr(o2))
end
function search(o1::Any,e2::Expr)
    Expr(:call,:search,expr(o1),e2)
end
function search(e1::Expr,e2::Expr)
    Expr(:call,:search,e1,e2)
end
function search(e1::Expr,o2::Any,o3::Any)
    Expr(:call,:search,e1,expr(o2),expr(o3))
end
function search(o1::Any,e2::Expr,o3::Any)
    Expr(:call,:search,expr(o1),e2,expr(o3))
end
function search(e1::Expr,e2::Expr,o3::Any)
    Expr(:call,:search,e1,e2,expr(o3))
end
function search(e1::Expr,e2::Expr,e3::Expr)
    Expr(:call,:search,e1,e2,e3)
end
function searchindex(e1::Expr,o2::Any)
    Expr(:call,:searchindex,e1,expr(o2))
end
function searchindex(o1::Any,e2::Expr)
    Expr(:call,:searchindex,expr(o1),e2)
end
function searchindex(e1::Expr,e2::Expr)
    Expr(:call,:searchindex,e1,e2)
end
function searchindex(e1::Expr,o2::Any,o3::Any)
    Expr(:call,:searchindex,e1,expr(o2),expr(o3))
end
function searchindex(o1::Any,e2::Expr,o3::Any)
    Expr(:call,:searchindex,expr(o1),e2,expr(o3))
end
function searchindex(e1::Expr,e2::Expr,o3::Any)
    Expr(:call,:searchindex,e1,e2,expr(o3))
end
function searchindex(e1::Expr,e2::Expr,e3::Expr)
    Expr(:call,:searchindex,e1,e2,e3)
end
function searchsorted(e1::Expr,o2::Any)
    Expr(:call,:searchsorted,e1,expr(o2))
end
function searchsorted(e1::Expr,e2::Expr)
    Expr(:call,:searchsorted,e1,e2)
end
function searchsorted(e1::Expr,o2::Any,o3::Any)
    Expr(:call,:searchsorted,e1,expr(o2),expr(o3))
end
function searchsorted(o1::Any,o2::Any,e3::Expr)
    Expr(:call,:searchsorted,expr(o1),expr(o2),e3)
end
function searchsorted(e1::Expr,o2::Any,e3::Expr)
    Expr(:call,:searchsorted,e1,expr(o2),e3)
end
function searchsorted(e1::Expr,e2::Expr,e3::Expr)
    Expr(:call,:searchsorted,e1,e2,e3)
end
function searchsorted(e1::Expr,o2::Any,o3::Any,o4::Any,o5::Any)
    Expr(:call,:searchsorted,e1,expr(o2),expr(o3),expr(o4),expr(o5))
end
function searchsorted(o1::Any,o2::Any,e3::Expr,o4::Any,o5::Any)
    Expr(:call,:searchsorted,expr(o1),expr(o2),e3,expr(o4),expr(o5))
end
function searchsorted(e1::Expr,o2::Any,e3::Expr,o4::Any,o5::Any)
    Expr(:call,:searchsorted,e1,expr(o2),e3,expr(o4),expr(o5))
end
function searchsorted(o1::Any,o2::Any,o3::Any,e4::Expr,o5::Any)
    Expr(:call,:searchsorted,expr(o1),expr(o2),expr(o3),e4,expr(o5))
end
function searchsorted(e1::Expr,o2::Any,o3::Any,e4::Expr,o5::Any)
    Expr(:call,:searchsorted,e1,expr(o2),expr(o3),e4,expr(o5))
end
function searchsorted(o1::Any,o2::Any,e3::Expr,e4::Expr,o5::Any)
    Expr(:call,:searchsorted,expr(o1),expr(o2),e3,e4,expr(o5))
end
function searchsorted(e1::Expr,o2::Any,e3::Expr,e4::Expr,o5::Any)
    Expr(:call,:searchsorted,e1,expr(o2),e3,e4,expr(o5))
end
function searchsorted(o1::Any,o2::Any,o3::Any,o4::Any,e5::Expr)
    Expr(:call,:searchsorted,expr(o1),expr(o2),expr(o3),expr(o4),e5)
end
function searchsorted(e1::Expr,o2::Any,o3::Any,o4::Any,e5::Expr)
    Expr(:call,:searchsorted,e1,expr(o2),expr(o3),expr(o4),e5)
end
function searchsorted(o1::Any,o2::Any,e3::Expr,o4::Any,e5::Expr)
    Expr(:call,:searchsorted,expr(o1),expr(o2),e3,expr(o4),e5)
end
function searchsorted(e1::Expr,o2::Any,e3::Expr,o4::Any,e5::Expr)
    Expr(:call,:searchsorted,e1,expr(o2),e3,expr(o4),e5)
end
function searchsorted(o1::Any,o2::Any,o3::Any,e4::Expr,e5::Expr)
    Expr(:call,:searchsorted,expr(o1),expr(o2),expr(o3),e4,e5)
end
function searchsorted(e1::Expr,o2::Any,o3::Any,e4::Expr,e5::Expr)
    Expr(:call,:searchsorted,e1,expr(o2),expr(o3),e4,e5)
end
function searchsorted(o1::Any,o2::Any,e3::Expr,e4::Expr,e5::Expr)
    Expr(:call,:searchsorted,expr(o1),expr(o2),e3,e4,e5)
end
function searchsorted(e1::Expr,o2::Any,e3::Expr,e4::Expr,e5::Expr)
    Expr(:call,:searchsorted,e1,expr(o2),e3,e4,e5)
end
function searchsorted(e1::Expr,e2::Expr,e3::Expr,e4::Expr,e5::Expr)
    Expr(:call,:searchsorted,e1,e2,e3,e4,e5)
end
function searchsortedfirst(e1::Expr,o2::Any)
    Expr(:call,:searchsortedfirst,e1,expr(o2))
end
function searchsortedfirst(e1::Expr,e2::Expr)
    Expr(:call,:searchsortedfirst,e1,e2)
end
function searchsortedfirst(e1::Expr,o2::Any,o3::Any)
    Expr(:call,:searchsortedfirst,e1,expr(o2),expr(o3))
end
function searchsortedfirst(o1::Any,o2::Any,e3::Expr)
    Expr(:call,:searchsortedfirst,expr(o1),expr(o2),e3)
end
function searchsortedfirst(e1::Expr,o2::Any,e3::Expr)
    Expr(:call,:searchsortedfirst,e1,expr(o2),e3)
end
function searchsortedfirst(e1::Expr,e2::Expr,e3::Expr)
    Expr(:call,:searchsortedfirst,e1,e2,e3)
end
function searchsortedfirst(e1::Expr,o2::Any,o3::Any,o4::Any,o5::Any)
    Expr(:call,:searchsortedfirst,e1,expr(o2),expr(o3),expr(o4),expr(o5))
end
function searchsortedfirst(o1::Any,o2::Any,e3::Expr,o4::Any,o5::Any)
    Expr(:call,:searchsortedfirst,expr(o1),expr(o2),e3,expr(o4),expr(o5))
end
function searchsortedfirst(e1::Expr,o2::Any,e3::Expr,o4::Any,o5::Any)
    Expr(:call,:searchsortedfirst,e1,expr(o2),e3,expr(o4),expr(o5))
end
function searchsortedfirst(o1::Any,o2::Any,o3::Any,e4::Expr,o5::Any)
    Expr(:call,:searchsortedfirst,expr(o1),expr(o2),expr(o3),e4,expr(o5))
end
function searchsortedfirst(e1::Expr,o2::Any,o3::Any,e4::Expr,o5::Any)
    Expr(:call,:searchsortedfirst,e1,expr(o2),expr(o3),e4,expr(o5))
end
function searchsortedfirst(o1::Any,o2::Any,e3::Expr,e4::Expr,o5::Any)
    Expr(:call,:searchsortedfirst,expr(o1),expr(o2),e3,e4,expr(o5))
end
function searchsortedfirst(e1::Expr,o2::Any,e3::Expr,e4::Expr,o5::Any)
    Expr(:call,:searchsortedfirst,e1,expr(o2),e3,e4,expr(o5))
end
function searchsortedfirst(o1::Any,o2::Any,o3::Any,o4::Any,e5::Expr)
    Expr(:call,:searchsortedfirst,expr(o1),expr(o2),expr(o3),expr(o4),e5)
end
function searchsortedfirst(e1::Expr,o2::Any,o3::Any,o4::Any,e5::Expr)
    Expr(:call,:searchsortedfirst,e1,expr(o2),expr(o3),expr(o4),e5)
end
function searchsortedfirst(o1::Any,o2::Any,e3::Expr,o4::Any,e5::Expr)
    Expr(:call,:searchsortedfirst,expr(o1),expr(o2),e3,expr(o4),e5)
end
function searchsortedfirst(e1::Expr,o2::Any,e3::Expr,o4::Any,e5::Expr)
    Expr(:call,:searchsortedfirst,e1,expr(o2),e3,expr(o4),e5)
end
function searchsortedfirst(o1::Any,o2::Any,o3::Any,e4::Expr,e5::Expr)
    Expr(:call,:searchsortedfirst,expr(o1),expr(o2),expr(o3),e4,e5)
end
function searchsortedfirst(e1::Expr,o2::Any,o3::Any,e4::Expr,e5::Expr)
    Expr(:call,:searchsortedfirst,e1,expr(o2),expr(o3),e4,e5)
end
function searchsortedfirst(o1::Any,o2::Any,e3::Expr,e4::Expr,e5::Expr)
    Expr(:call,:searchsortedfirst,expr(o1),expr(o2),e3,e4,e5)
end
function searchsortedfirst(e1::Expr,o2::Any,e3::Expr,e4::Expr,e5::Expr)
    Expr(:call,:searchsortedfirst,e1,expr(o2),e3,e4,e5)
end
function searchsortedfirst(e1::Expr,e2::Expr,e3::Expr,e4::Expr,e5::Expr)
    Expr(:call,:searchsortedfirst,e1,e2,e3,e4,e5)
end
function searchsortedlast(e1::Expr,o2::Any)
    Expr(:call,:searchsortedlast,e1,expr(o2))
end
function searchsortedlast(e1::Expr,e2::Expr)
    Expr(:call,:searchsortedlast,e1,e2)
end
function searchsortedlast(e1::Expr,o2::Any,o3::Any)
    Expr(:call,:searchsortedlast,e1,expr(o2),expr(o3))
end
function searchsortedlast(o1::Any,o2::Any,e3::Expr)
    Expr(:call,:searchsortedlast,expr(o1),expr(o2),e3)
end
function searchsortedlast(e1::Expr,o2::Any,e3::Expr)
    Expr(:call,:searchsortedlast,e1,expr(o2),e3)
end
function searchsortedlast(e1::Expr,e2::Expr,e3::Expr)
    Expr(:call,:searchsortedlast,e1,e2,e3)
end
function searchsortedlast(e1::Expr,o2::Any,o3::Any,o4::Any,o5::Any)
    Expr(:call,:searchsortedlast,e1,expr(o2),expr(o3),expr(o4),expr(o5))
end
function searchsortedlast(o1::Any,o2::Any,e3::Expr,o4::Any,o5::Any)
    Expr(:call,:searchsortedlast,expr(o1),expr(o2),e3,expr(o4),expr(o5))
end
function searchsortedlast(e1::Expr,o2::Any,e3::Expr,o4::Any,o5::Any)
    Expr(:call,:searchsortedlast,e1,expr(o2),e3,expr(o4),expr(o5))
end
function searchsortedlast(o1::Any,o2::Any,o3::Any,e4::Expr,o5::Any)
    Expr(:call,:searchsortedlast,expr(o1),expr(o2),expr(o3),e4,expr(o5))
end
function searchsortedlast(e1::Expr,o2::Any,o3::Any,e4::Expr,o5::Any)
    Expr(:call,:searchsortedlast,e1,expr(o2),expr(o3),e4,expr(o5))
end
function searchsortedlast(o1::Any,o2::Any,e3::Expr,e4::Expr,o5::Any)
    Expr(:call,:searchsortedlast,expr(o1),expr(o2),e3,e4,expr(o5))
end
function searchsortedlast(e1::Expr,o2::Any,e3::Expr,e4::Expr,o5::Any)
    Expr(:call,:searchsortedlast,e1,expr(o2),e3,e4,expr(o5))
end
function searchsortedlast(o1::Any,o2::Any,o3::Any,o4::Any,e5::Expr)
    Expr(:call,:searchsortedlast,expr(o1),expr(o2),expr(o3),expr(o4),e5)
end
function searchsortedlast(e1::Expr,o2::Any,o3::Any,o4::Any,e5::Expr)
    Expr(:call,:searchsortedlast,e1,expr(o2),expr(o3),expr(o4),e5)
end
function searchsortedlast(o1::Any,o2::Any,e3::Expr,o4::Any,e5::Expr)
    Expr(:call,:searchsortedlast,expr(o1),expr(o2),e3,expr(o4),e5)
end
function searchsortedlast(e1::Expr,o2::Any,e3::Expr,o4::Any,e5::Expr)
    Expr(:call,:searchsortedlast,e1,expr(o2),e3,expr(o4),e5)
end
function searchsortedlast(o1::Any,o2::Any,o3::Any,e4::Expr,e5::Expr)
    Expr(:call,:searchsortedlast,expr(o1),expr(o2),expr(o3),e4,e5)
end
function searchsortedlast(e1::Expr,o2::Any,o3::Any,e4::Expr,e5::Expr)
    Expr(:call,:searchsortedlast,e1,expr(o2),expr(o3),e4,e5)
end
function searchsortedlast(o1::Any,o2::Any,e3::Expr,e4::Expr,e5::Expr)
    Expr(:call,:searchsortedlast,expr(o1),expr(o2),e3,e4,e5)
end
function searchsortedlast(e1::Expr,o2::Any,e3::Expr,e4::Expr,e5::Expr)
    Expr(:call,:searchsortedlast,e1,expr(o2),e3,e4,e5)
end
function searchsortedlast(e1::Expr,e2::Expr,e3::Expr,e4::Expr,e5::Expr)
    Expr(:call,:searchsortedlast,e1,e2,e3,e4,e5)
end
function sec(e1::Expr)
    Expr(:call,:sec,e1)
end
function secd(e1::Expr)
    Expr(:call,:secd,e1)
end
function sech(e1::Expr)
    Expr(:call,:sech,e1)
end
function seek(e1::Expr,o2::Any)
    Expr(:call,:seek,e1,expr(o2))
end
function seek(o1::Any,e2::Expr)
    Expr(:call,:seek,expr(o1),e2)
end
function seek(e1::Expr,e2::Expr)
    Expr(:call,:seek,e1,e2)
end
function seekend(e1::Expr)
    Expr(:call,:seekend,e1)
end
function seekstart(e1::Expr)
    Expr(:call,:seekstart,e1)
end
function select(e1::Expr,o2::Any)
    Expr(:call,:select,e1,expr(o2))
end
function select(o1::Any,e2::Expr)
    Expr(:call,:select,expr(o1),e2)
end
function select(e1::Expr,e2::Expr)
    Expr(:call,:select,e1,e2)
end
function select!(e1::Expr,o2::Any)
    Expr(:call,:select!,e1,expr(o2))
end
function select!(o1::Any,e2::Expr)
    Expr(:call,:select!,expr(o1),e2)
end
function select!(e1::Expr,e2::Expr)
    Expr(:call,:select!,e1,e2)
end
function select!(e1::Expr,o2::Any,o3::Any)
    Expr(:call,:select!,e1,expr(o2),expr(o3))
end
function select!(o1::Any,e2::Expr,o3::Any)
    Expr(:call,:select!,expr(o1),e2,expr(o3))
end
function select!(e1::Expr,e2::Expr,o3::Any)
    Expr(:call,:select!,e1,e2,expr(o3))
end
function select!(o1::Any,o2::Any,e3::Expr)
    Expr(:call,:select!,expr(o1),expr(o2),e3)
end
function select!(e1::Expr,o2::Any,e3::Expr)
    Expr(:call,:select!,e1,expr(o2),e3)
end
function select!(o1::Any,e2::Expr,e3::Expr)
    Expr(:call,:select!,expr(o1),e2,e3)
end
function select!(e1::Expr,e2::Expr,e3::Expr)
    Expr(:call,:select!,e1,e2,e3)
end
function selectperm(e1::Expr,o2::Any)
    Expr(:call,:selectperm,e1,expr(o2))
end
function selectperm(o1::Any,e2::Expr)
    Expr(:call,:selectperm,expr(o1),e2)
end
function selectperm(e1::Expr,e2::Expr)
    Expr(:call,:selectperm,e1,e2)
end
function selectperm!(e1::Expr,o2::Any,o3::Any)
    Expr(:call,:selectperm!,e1,expr(o2),expr(o3))
end
function selectperm!(o1::Any,e2::Expr,o3::Any)
    Expr(:call,:selectperm!,expr(o1),e2,expr(o3))
end
function selectperm!(e1::Expr,e2::Expr,o3::Any)
    Expr(:call,:selectperm!,e1,e2,expr(o3))
end
function selectperm!(o1::Any,o2::Any,e3::Expr)
    Expr(:call,:selectperm!,expr(o1),expr(o2),e3)
end
function selectperm!(e1::Expr,o2::Any,e3::Expr)
    Expr(:call,:selectperm!,e1,expr(o2),e3)
end
function selectperm!(o1::Any,e2::Expr,e3::Expr)
    Expr(:call,:selectperm!,expr(o1),e2,e3)
end
function selectperm!(e1::Expr,e2::Expr,e3::Expr)
    Expr(:call,:selectperm!,e1,e2,e3)
end
function send(e1::Expr,o2::Any,o3::Any,o4::Any)
    Expr(:call,:send,e1,expr(o2),expr(o3),expr(o4))
end
function send(e1::Expr,o2::Any,o3::Any,e4::Expr)
    Expr(:call,:send,e1,expr(o2),expr(o3),e4)
end
function send(e1::Expr,e2::Expr,o3::Any,o4::Any)
    Expr(:call,:send,e1,e2,expr(o3),expr(o4))
end
function send(e1::Expr,e2::Expr,o3::Any,e4::Expr)
    Expr(:call,:send,e1,e2,expr(o3),e4)
end
function send(e1::Expr,o2::Any,e3::Expr,o4::Any)
    Expr(:call,:send,e1,expr(o2),e3,expr(o4))
end
function send(e1::Expr,o2::Any,e3::Expr,e4::Expr)
    Expr(:call,:send,e1,expr(o2),e3,e4)
end
function send(e1::Expr,e2::Expr,e3::Expr,o4::Any)
    Expr(:call,:send,e1,e2,e3,expr(o4))
end
function send(e1::Expr,e2::Expr,e3::Expr,e4::Expr)
    Expr(:call,:send,e1,e2,e3,e4)
end
function serialize(e1::Expr,o2::Any)
    Expr(:call,:serialize,e1,expr(o2))
end
function serialize(e1::Expr,e2::Expr)
    Expr(:call,:serialize,e1,e2)
end
function serialize(e1::Expr,o2::Any,o3::Any)
    Expr(:call,:serialize,e1,expr(o2),expr(o3))
end
function serialize(o1::Any,e2::Expr,o3::Any)
    Expr(:call,:serialize,expr(o1),e2,expr(o3))
end
function serialize(e1::Expr,e2::Expr,o3::Any)
    Expr(:call,:serialize,e1,e2,expr(o3))
end
function serialize(e1::Expr,e2::Expr,e3::Expr)
    Expr(:call,:serialize,e1,e2,e3)
end
function set_zero_subnormals(e1::Expr)
    Expr(:call,:set_zero_subnormals,e1)
end
function setdiff!(e1::Expr,o2::Any)
    Expr(:call,:setdiff!,e1,expr(o2))
end
function setdiff!(e1::Expr,e2::Expr)
    Expr(:call,:setdiff!,e1,e2)
end
function setenv(e1::Expr,o2::Any)
    Expr(:call,:setenv,e1,expr(o2))
end
function setenv(e1::Expr,e2::Expr)
    Expr(:call,:setenv,e1,e2)
end
function setenv(e1::Expr)
    Expr(:call,:setenv,e1)
end
function setindex!(e1::Expr,o2::Any,o3::Any,o4::Any)
    Expr(:call,:setindex!,e1,expr(o2),expr(o3),expr(o4))
end
function setindex!(o1::Any,o2::Any,e3::Expr,o4::Any)
    Expr(:call,:setindex!,expr(o1),expr(o2),e3,expr(o4))
end
function setindex!(e1::Expr,o2::Any,e3::Expr,o4::Any)
    Expr(:call,:setindex!,e1,expr(o2),e3,expr(o4))
end
function setindex!(o1::Any,o2::Any,o3::Any,e4::Expr)
    Expr(:call,:setindex!,expr(o1),expr(o2),expr(o3),e4)
end
function setindex!(e1::Expr,o2::Any,o3::Any,e4::Expr)
    Expr(:call,:setindex!,e1,expr(o2),expr(o3),e4)
end
function setindex!(o1::Any,o2::Any,e3::Expr,e4::Expr)
    Expr(:call,:setindex!,expr(o1),expr(o2),e3,e4)
end
function setindex!(e1::Expr,o2::Any,e3::Expr,e4::Expr)
    Expr(:call,:setindex!,e1,expr(o2),e3,e4)
end
function setindex!(e1::Expr,e2::Expr,e3::Expr,e4::Expr)
    Expr(:call,:setindex!,e1,e2,e3,e4)
end
function setindex!(e1::Expr,o2::Any)
    Expr(:call,:setindex!,e1,expr(o2))
end
function setindex!(e1::Expr,e2::Expr)
    Expr(:call,:setindex!,e1,e2)
end
function setindex!(e1::Expr,o2::Any,o3::Any)
    Expr(:call,:setindex!,e1,expr(o2),expr(o3))
end
function setindex!(e1::Expr,e2::Expr,o3::Any)
    Expr(:call,:setindex!,e1,e2,expr(o3))
end
function setindex!(e1::Expr,o2::Any,e3::Expr)
    Expr(:call,:setindex!,e1,expr(o2),e3)
end
function setindex!(e1::Expr,e2::Expr,e3::Expr)
    Expr(:call,:setindex!,e1,e2,e3)
end
function setindex!(e1::Expr,o2::Any,o3::Any,o4::Any,o5::Any)
    Expr(:call,:setindex!,e1,expr(o2),expr(o3),expr(o4),expr(o5))
end
function setindex!(o1::Any,o2::Any,o3::Any,o4::Any,e5::Expr)
    Expr(:call,:setindex!,expr(o1),expr(o2),expr(o3),expr(o4),e5)
end
function setindex!(e1::Expr,o2::Any,o3::Any,o4::Any,e5::Expr)
    Expr(:call,:setindex!,e1,expr(o2),expr(o3),expr(o4),e5)
end
function setindex!(e1::Expr,o2::Any,o3::Any,e4::Expr,e5::Expr)
    Expr(:call,:setindex!,e1,expr(o2),expr(o3),e4,e5)
end
function setindex!(e1::Expr,e2::Expr,o3::Any,o4::Any,e5::Expr)
    Expr(:call,:setindex!,e1,e2,expr(o3),expr(o4),e5)
end
function setindex!(e1::Expr,e2::Expr,o3::Any,e4::Expr,e5::Expr)
    Expr(:call,:setindex!,e1,e2,expr(o3),e4,e5)
end
function setindex!(e1::Expr,o2::Any,e3::Expr,o4::Any,e5::Expr)
    Expr(:call,:setindex!,e1,expr(o2),e3,expr(o4),e5)
end
function setindex!(e1::Expr,o2::Any,e3::Expr,e4::Expr,e5::Expr)
    Expr(:call,:setindex!,e1,expr(o2),e3,e4,e5)
end
function setindex!(e1::Expr,e2::Expr,e3::Expr,o4::Any,e5::Expr)
    Expr(:call,:setindex!,e1,e2,e3,expr(o4),e5)
end
function setindex!(e1::Expr,e2::Expr,e3::Expr,e4::Expr,e5::Expr)
    Expr(:call,:setindex!,e1,e2,e3,e4,e5)
end
function setprecision(e1::Expr,o2::Any)
    Expr(:call,:setprecision,e1,expr(o2))
end
function setprecision(o1::Any,e2::Expr)
    Expr(:call,:setprecision,expr(o1),e2)
end
function setprecision(e1::Expr,e2::Expr)
    Expr(:call,:setprecision,e1,e2)
end
function setprecision(e1::Expr,o2::Any,o3::Any)
    Expr(:call,:setprecision,e1,expr(o2),expr(o3))
end
function setprecision(o1::Any,e2::Expr,o3::Any)
    Expr(:call,:setprecision,expr(o1),e2,expr(o3))
end
function setprecision(e1::Expr,e2::Expr,o3::Any)
    Expr(:call,:setprecision,e1,e2,expr(o3))
end
function setprecision(o1::Any,o2::Any,e3::Expr)
    Expr(:call,:setprecision,expr(o1),expr(o2),e3)
end
function setprecision(e1::Expr,o2::Any,e3::Expr)
    Expr(:call,:setprecision,e1,expr(o2),e3)
end
function setprecision(o1::Any,e2::Expr,e3::Expr)
    Expr(:call,:setprecision,expr(o1),e2,e3)
end
function setprecision(e1::Expr,e2::Expr,e3::Expr)
    Expr(:call,:setprecision,e1,e2,e3)
end
function setprecision(e1::Expr)
    Expr(:call,:setprecision,e1)
end
function setrounding(e1::Expr,o2::Any)
    Expr(:call,:setrounding,e1,expr(o2))
end
function setrounding(o1::Any,e2::Expr)
    Expr(:call,:setrounding,expr(o1),e2)
end
function setrounding(e1::Expr,e2::Expr)
    Expr(:call,:setrounding,e1,e2)
end
function setrounding(e1::Expr,o2::Any,o3::Any)
    Expr(:call,:setrounding,e1,expr(o2),expr(o3))
end
function setrounding(o1::Any,e2::Expr,o3::Any)
    Expr(:call,:setrounding,expr(o1),e2,expr(o3))
end
function setrounding(e1::Expr,e2::Expr,o3::Any)
    Expr(:call,:setrounding,e1,e2,expr(o3))
end
function setrounding(o1::Any,o2::Any,e3::Expr)
    Expr(:call,:setrounding,expr(o1),expr(o2),e3)
end
function setrounding(e1::Expr,o2::Any,e3::Expr)
    Expr(:call,:setrounding,e1,expr(o2),e3)
end
function setrounding(o1::Any,e2::Expr,e3::Expr)
    Expr(:call,:setrounding,expr(o1),e2,e3)
end
function setrounding(e1::Expr,e2::Expr,e3::Expr)
    Expr(:call,:setrounding,e1,e2,e3)
end
function shift!(e1::Expr)
    Expr(:call,:shift!,e1)
end
function show(e1::Expr,o2::Any)
    Expr(:call,:show,e1,expr(o2))
end
function show(e1::Expr,e2::Expr)
    Expr(:call,:show,e1,e2)
end
function show(e1::Expr,o2::Any,o3::Any)
    Expr(:call,:show,e1,expr(o2),expr(o3))
end
function show(o1::Any,e2::Expr,o3::Any)
    Expr(:call,:show,expr(o1),e2,expr(o3))
end
function show(e1::Expr,e2::Expr,o3::Any)
    Expr(:call,:show,e1,e2,expr(o3))
end
function show(e1::Expr,e2::Expr,e3::Expr)
    Expr(:call,:show,e1,e2,e3)
end
function showall(e1::Expr,o2::Any)
    Expr(:call,:showall,e1,expr(o2))
end
function showall(e1::Expr,e2::Expr)
    Expr(:call,:showall,e1,e2)
end
function showcompact(e1::Expr,o2::Any)
    Expr(:call,:showcompact,e1,expr(o2))
end
function showcompact(e1::Expr,e2::Expr)
    Expr(:call,:showcompact,e1,e2)
end
function showerror(e1::Expr,o2::Any)
    Expr(:call,:showerror,e1,expr(o2))
end
function showerror(e1::Expr,e2::Expr)
    Expr(:call,:showerror,e1,e2)
end
function showerror(e1::Expr,o2::Any,o3::Any)
    Expr(:call,:showerror,e1,expr(o2),expr(o3))
end
function showerror(e1::Expr,e2::Expr,o3::Any)
    Expr(:call,:showerror,e1,e2,expr(o3))
end
function showerror(e1::Expr,o2::Any,e3::Expr)
    Expr(:call,:showerror,e1,expr(o2),e3)
end
function showerror(e1::Expr,e2::Expr,e3::Expr)
    Expr(:call,:showerror,e1,e2,e3)
end
function shuffle(e1::Expr,o2::Any)
    Expr(:call,:shuffle,e1,expr(o2))
end
function shuffle(o1::Any,e2::Expr)
    Expr(:call,:shuffle,expr(o1),e2)
end
function shuffle(e1::Expr,e2::Expr)
    Expr(:call,:shuffle,e1,e2)
end
function shuffle(e1::Expr)
    Expr(:call,:shuffle,e1)
end
function shuffle!(e1::Expr,o2::Any)
    Expr(:call,:shuffle!,e1,expr(o2))
end
function shuffle!(o1::Any,e2::Expr)
    Expr(:call,:shuffle!,expr(o1),e2)
end
function shuffle!(e1::Expr,e2::Expr)
    Expr(:call,:shuffle!,e1,e2)
end
function shuffle!(e1::Expr)
    Expr(:call,:shuffle!,e1)
end
function sign(e1::Expr)
    Expr(:call,:sign,e1)
end
function signbit(e1::Expr)
    Expr(:call,:signbit,e1)
end
function signif(e1::Expr,o2::Any)
    Expr(:call,:signif,e1,expr(o2))
end
function signif(o1::Any,e2::Expr)
    Expr(:call,:signif,expr(o1),e2)
end
function signif(e1::Expr,e2::Expr)
    Expr(:call,:signif,e1,e2)
end
function signif(e1::Expr,o2::Any,o3::Any)
    Expr(:call,:signif,e1,expr(o2),expr(o3))
end
function signif(o1::Any,e2::Expr,o3::Any)
    Expr(:call,:signif,expr(o1),e2,expr(o3))
end
function signif(e1::Expr,e2::Expr,o3::Any)
    Expr(:call,:signif,e1,e2,expr(o3))
end
function signif(o1::Any,o2::Any,e3::Expr)
    Expr(:call,:signif,expr(o1),expr(o2),e3)
end
function signif(e1::Expr,o2::Any,e3::Expr)
    Expr(:call,:signif,e1,expr(o2),e3)
end
function signif(o1::Any,e2::Expr,e3::Expr)
    Expr(:call,:signif,expr(o1),e2,e3)
end
function signif(e1::Expr,e2::Expr,e3::Expr)
    Expr(:call,:signif,e1,e2,e3)
end
function significand(e1::Expr)
    Expr(:call,:significand,e1)
end
function similar(o1::Any,e2::Expr)
    Expr(:call,:similar,expr(o1),e2)
end
function similar(e1::Expr,e2::Expr)
    Expr(:call,:similar,e1,e2)
end
function similar(e1::Expr,o2::Any,o3::Any)
    Expr(:call,:similar,e1,expr(o2),expr(o3))
end
function similar(o1::Any,e2::Expr,o3::Any)
    Expr(:call,:similar,expr(o1),e2,expr(o3))
end
function similar(e1::Expr,e2::Expr,o3::Any)
    Expr(:call,:similar,e1,e2,expr(o3))
end
function similar(o1::Any,o2::Any,e3::Expr)
    Expr(:call,:similar,expr(o1),expr(o2),e3)
end
function similar(e1::Expr,o2::Any,e3::Expr)
    Expr(:call,:similar,e1,expr(o2),e3)
end
function similar(o1::Any,e2::Expr,e3::Expr)
    Expr(:call,:similar,expr(o1),e2,e3)
end
function similar(e1::Expr,e2::Expr,e3::Expr)
    Expr(:call,:similar,e1,e2,e3)
end
function sin(e1::Expr)
    Expr(:call,:sin,e1)
end
function sinc(e1::Expr)
    Expr(:call,:sinc,e1)
end
function sinh(e1::Expr)
    Expr(:call,:sinh,e1)
end
function sinpi(e1::Expr)
    Expr(:call,:sinpi,e1)
end
function size(o1::Any,e2::Expr,o3::Any,o4::Any)
    Expr(:call,:size,expr(o1),e2,expr(o3),expr(o4))
end
function size(o1::Any,o2::Any,e3::Expr,o4::Any)
    Expr(:call,:size,expr(o1),expr(o2),e3,expr(o4))
end
function size(o1::Any,e2::Expr,e3::Expr,o4::Any)
    Expr(:call,:size,expr(o1),e2,e3,expr(o4))
end
function size(o1::Any,o2::Any,o3::Any,e4::Expr)
    Expr(:call,:size,expr(o1),expr(o2),expr(o3),e4)
end
function size(o1::Any,e2::Expr,o3::Any,e4::Expr)
    Expr(:call,:size,expr(o1),e2,expr(o3),e4)
end
function size(o1::Any,o2::Any,e3::Expr,e4::Expr)
    Expr(:call,:size,expr(o1),expr(o2),e3,e4)
end
function size(o1::Any,e2::Expr,e3::Expr,e4::Expr)
    Expr(:call,:size,expr(o1),e2,e3,e4)
end
function size(e1::Expr,e2::Expr,e3::Expr,e4::Expr)
    Expr(:call,:size,e1,e2,e3,e4)
end
function size(e1::Expr,o2::Any)
    Expr(:call,:size,e1,expr(o2))
end
function size(e1::Expr,e2::Expr)
    Expr(:call,:size,e1,e2)
end
function size(e1::Expr)
    Expr(:call,:size,e1)
end
function sizehint!(e1::Expr,o2::Any)
    Expr(:call,:sizehint!,e1,expr(o2))
end
function sizehint!(e1::Expr,e2::Expr)
    Expr(:call,:sizehint!,e1,e2)
end
function skip(e1::Expr,o2::Any)
    Expr(:call,:skip,e1,expr(o2))
end
function skip(o1::Any,e2::Expr)
    Expr(:call,:skip,expr(o1),e2)
end
function skip(e1::Expr,e2::Expr)
    Expr(:call,:skip,e1,e2)
end
function skipchars(e1::Expr,o2::Any)
    Expr(:call,:skipchars,e1,expr(o2))
end
function skipchars(e1::Expr,e2::Expr)
    Expr(:call,:skipchars,e1,e2)
end
function sleep(e1::Expr)
    Expr(:call,:sleep,e1)
end
function slicedim(e1::Expr,o2::Any,o3::Any)
    Expr(:call,:slicedim,e1,expr(o2),expr(o3))
end
function slicedim(o1::Any,e2::Expr,o3::Any)
    Expr(:call,:slicedim,expr(o1),e2,expr(o3))
end
function slicedim(e1::Expr,e2::Expr,o3::Any)
    Expr(:call,:slicedim,e1,e2,expr(o3))
end
function slicedim(e1::Expr,e2::Expr,e3::Expr)
    Expr(:call,:slicedim,e1,e2,e3)
end
function sort(e1::Expr,o2::Any)
    Expr(:call,:sort,e1,expr(o2))
end
function sort(o1::Any,e2::Expr)
    Expr(:call,:sort,expr(o1),e2)
end
function sort(e1::Expr,e2::Expr)
    Expr(:call,:sort,e1,e2)
end
function sort(e1::Expr)
    Expr(:call,:sort,e1)
end
function sort!(e1::Expr,o2::Any,o3::Any)
    Expr(:call,:sort!,e1,expr(o2),expr(o3))
end
function sort!(o1::Any,e2::Expr,o3::Any)
    Expr(:call,:sort!,expr(o1),e2,expr(o3))
end
function sort!(e1::Expr,e2::Expr,o3::Any)
    Expr(:call,:sort!,e1,e2,expr(o3))
end
function sort!(o1::Any,o2::Any,e3::Expr)
    Expr(:call,:sort!,expr(o1),expr(o2),e3)
end
function sort!(e1::Expr,o2::Any,e3::Expr)
    Expr(:call,:sort!,e1,expr(o2),e3)
end
function sort!(o1::Any,e2::Expr,e3::Expr)
    Expr(:call,:sort!,expr(o1),e2,e3)
end
function sort!(e1::Expr,e2::Expr,e3::Expr)
    Expr(:call,:sort!,e1,e2,e3)
end
function sort!(e1::Expr,o2::Any,o3::Any,o4::Any,o5::Any)
    Expr(:call,:sort!,e1,expr(o2),expr(o3),expr(o4),expr(o5))
end
function sort!(o1::Any,e2::Expr,o3::Any,o4::Any,o5::Any)
    Expr(:call,:sort!,expr(o1),e2,expr(o3),expr(o4),expr(o5))
end
function sort!(e1::Expr,e2::Expr,o3::Any,o4::Any,o5::Any)
    Expr(:call,:sort!,e1,e2,expr(o3),expr(o4),expr(o5))
end
function sort!(o1::Any,o2::Any,e3::Expr,o4::Any,o5::Any)
    Expr(:call,:sort!,expr(o1),expr(o2),e3,expr(o4),expr(o5))
end
function sort!(e1::Expr,o2::Any,e3::Expr,o4::Any,o5::Any)
    Expr(:call,:sort!,e1,expr(o2),e3,expr(o4),expr(o5))
end
function sort!(o1::Any,e2::Expr,e3::Expr,o4::Any,o5::Any)
    Expr(:call,:sort!,expr(o1),e2,e3,expr(o4),expr(o5))
end
function sort!(e1::Expr,e2::Expr,e3::Expr,o4::Any,o5::Any)
    Expr(:call,:sort!,e1,e2,e3,expr(o4),expr(o5))
end
function sort!(o1::Any,o2::Any,o3::Any,e4::Expr,o5::Any)
    Expr(:call,:sort!,expr(o1),expr(o2),expr(o3),e4,expr(o5))
end
function sort!(e1::Expr,o2::Any,o3::Any,e4::Expr,o5::Any)
    Expr(:call,:sort!,e1,expr(o2),expr(o3),e4,expr(o5))
end
function sort!(o1::Any,e2::Expr,o3::Any,e4::Expr,o5::Any)
    Expr(:call,:sort!,expr(o1),e2,expr(o3),e4,expr(o5))
end
function sort!(e1::Expr,e2::Expr,o3::Any,e4::Expr,o5::Any)
    Expr(:call,:sort!,e1,e2,expr(o3),e4,expr(o5))
end
function sort!(o1::Any,o2::Any,e3::Expr,e4::Expr,o5::Any)
    Expr(:call,:sort!,expr(o1),expr(o2),e3,e4,expr(o5))
end
function sort!(e1::Expr,o2::Any,e3::Expr,e4::Expr,o5::Any)
    Expr(:call,:sort!,e1,expr(o2),e3,e4,expr(o5))
end
function sort!(o1::Any,e2::Expr,e3::Expr,e4::Expr,o5::Any)
    Expr(:call,:sort!,expr(o1),e2,e3,e4,expr(o5))
end
function sort!(e1::Expr,e2::Expr,e3::Expr,e4::Expr,o5::Any)
    Expr(:call,:sort!,e1,e2,e3,e4,expr(o5))
end
function sort!(o1::Any,o2::Any,o3::Any,o4::Any,e5::Expr)
    Expr(:call,:sort!,expr(o1),expr(o2),expr(o3),expr(o4),e5)
end
function sort!(e1::Expr,o2::Any,o3::Any,o4::Any,e5::Expr)
    Expr(:call,:sort!,e1,expr(o2),expr(o3),expr(o4),e5)
end
function sort!(o1::Any,e2::Expr,o3::Any,o4::Any,e5::Expr)
    Expr(:call,:sort!,expr(o1),e2,expr(o3),expr(o4),e5)
end
function sort!(e1::Expr,e2::Expr,o3::Any,o4::Any,e5::Expr)
    Expr(:call,:sort!,e1,e2,expr(o3),expr(o4),e5)
end
function sort!(o1::Any,o2::Any,e3::Expr,o4::Any,e5::Expr)
    Expr(:call,:sort!,expr(o1),expr(o2),e3,expr(o4),e5)
end
function sort!(e1::Expr,o2::Any,e3::Expr,o4::Any,e5::Expr)
    Expr(:call,:sort!,e1,expr(o2),e3,expr(o4),e5)
end
function sort!(o1::Any,e2::Expr,e3::Expr,o4::Any,e5::Expr)
    Expr(:call,:sort!,expr(o1),e2,e3,expr(o4),e5)
end
function sort!(e1::Expr,e2::Expr,e3::Expr,o4::Any,e5::Expr)
    Expr(:call,:sort!,e1,e2,e3,expr(o4),e5)
end
function sort!(o1::Any,o2::Any,o3::Any,e4::Expr,e5::Expr)
    Expr(:call,:sort!,expr(o1),expr(o2),expr(o3),e4,e5)
end
function sort!(e1::Expr,o2::Any,o3::Any,e4::Expr,e5::Expr)
    Expr(:call,:sort!,e1,expr(o2),expr(o3),e4,e5)
end
function sort!(o1::Any,e2::Expr,o3::Any,e4::Expr,e5::Expr)
    Expr(:call,:sort!,expr(o1),e2,expr(o3),e4,e5)
end
function sort!(e1::Expr,e2::Expr,o3::Any,e4::Expr,e5::Expr)
    Expr(:call,:sort!,e1,e2,expr(o3),e4,e5)
end
function sort!(o1::Any,o2::Any,e3::Expr,e4::Expr,e5::Expr)
    Expr(:call,:sort!,expr(o1),expr(o2),e3,e4,e5)
end
function sort!(e1::Expr,o2::Any,e3::Expr,e4::Expr,e5::Expr)
    Expr(:call,:sort!,e1,expr(o2),e3,e4,e5)
end
function sort!(o1::Any,e2::Expr,e3::Expr,e4::Expr,e5::Expr)
    Expr(:call,:sort!,expr(o1),e2,e3,e4,e5)
end
function sort!(e1::Expr,e2::Expr,e3::Expr,e4::Expr,e5::Expr)
    Expr(:call,:sort!,e1,e2,e3,e4,e5)
end
function sort!(e1::Expr,o2::Any,o3::Any,o4::Any,o5::Any,o6::Any)
    Expr(:call,:sort!,e1,expr(o2),expr(o3),expr(o4),expr(o5),expr(o6))
end
function sort!(o1::Any,e2::Expr,o3::Any,o4::Any,o5::Any,o6::Any)
    Expr(:call,:sort!,expr(o1),e2,expr(o3),expr(o4),expr(o5),expr(o6))
end
function sort!(e1::Expr,e2::Expr,o3::Any,o4::Any,o5::Any,o6::Any)
    Expr(:call,:sort!,e1,e2,expr(o3),expr(o4),expr(o5),expr(o6))
end
function sort!(o1::Any,o2::Any,e3::Expr,o4::Any,o5::Any,o6::Any)
    Expr(:call,:sort!,expr(o1),expr(o2),e3,expr(o4),expr(o5),expr(o6))
end
function sort!(e1::Expr,o2::Any,e3::Expr,o4::Any,o5::Any,o6::Any)
    Expr(:call,:sort!,e1,expr(o2),e3,expr(o4),expr(o5),expr(o6))
end
function sort!(o1::Any,e2::Expr,e3::Expr,o4::Any,o5::Any,o6::Any)
    Expr(:call,:sort!,expr(o1),e2,e3,expr(o4),expr(o5),expr(o6))
end
function sort!(e1::Expr,e2::Expr,e3::Expr,o4::Any,o5::Any,o6::Any)
    Expr(:call,:sort!,e1,e2,e3,expr(o4),expr(o5),expr(o6))
end
function sort!(o1::Any,o2::Any,o3::Any,e4::Expr,o5::Any,o6::Any)
    Expr(:call,:sort!,expr(o1),expr(o2),expr(o3),e4,expr(o5),expr(o6))
end
function sort!(e1::Expr,o2::Any,o3::Any,e4::Expr,o5::Any,o6::Any)
    Expr(:call,:sort!,e1,expr(o2),expr(o3),e4,expr(o5),expr(o6))
end
function sort!(o1::Any,e2::Expr,o3::Any,e4::Expr,o5::Any,o6::Any)
    Expr(:call,:sort!,expr(o1),e2,expr(o3),e4,expr(o5),expr(o6))
end
function sort!(e1::Expr,e2::Expr,o3::Any,e4::Expr,o5::Any,o6::Any)
    Expr(:call,:sort!,e1,e2,expr(o3),e4,expr(o5),expr(o6))
end
function sort!(o1::Any,o2::Any,e3::Expr,e4::Expr,o5::Any,o6::Any)
    Expr(:call,:sort!,expr(o1),expr(o2),e3,e4,expr(o5),expr(o6))
end
function sort!(e1::Expr,o2::Any,e3::Expr,e4::Expr,o5::Any,o6::Any)
    Expr(:call,:sort!,e1,expr(o2),e3,e4,expr(o5),expr(o6))
end
function sort!(o1::Any,e2::Expr,e3::Expr,e4::Expr,o5::Any,o6::Any)
    Expr(:call,:sort!,expr(o1),e2,e3,e4,expr(o5),expr(o6))
end
function sort!(e1::Expr,e2::Expr,e3::Expr,e4::Expr,o5::Any,o6::Any)
    Expr(:call,:sort!,e1,e2,e3,e4,expr(o5),expr(o6))
end
function sort!(o1::Any,o2::Any,o3::Any,o4::Any,e5::Expr,o6::Any)
    Expr(:call,:sort!,expr(o1),expr(o2),expr(o3),expr(o4),e5,expr(o6))
end
function sort!(e1::Expr,o2::Any,o3::Any,o4::Any,e5::Expr,o6::Any)
    Expr(:call,:sort!,e1,expr(o2),expr(o3),expr(o4),e5,expr(o6))
end
function sort!(o1::Any,e2::Expr,o3::Any,o4::Any,e5::Expr,o6::Any)
    Expr(:call,:sort!,expr(o1),e2,expr(o3),expr(o4),e5,expr(o6))
end
function sort!(e1::Expr,e2::Expr,o3::Any,o4::Any,e5::Expr,o6::Any)
    Expr(:call,:sort!,e1,e2,expr(o3),expr(o4),e5,expr(o6))
end
function sort!(o1::Any,o2::Any,e3::Expr,o4::Any,e5::Expr,o6::Any)
    Expr(:call,:sort!,expr(o1),expr(o2),e3,expr(o4),e5,expr(o6))
end
function sort!(e1::Expr,o2::Any,e3::Expr,o4::Any,e5::Expr,o6::Any)
    Expr(:call,:sort!,e1,expr(o2),e3,expr(o4),e5,expr(o6))
end
function sort!(o1::Any,e2::Expr,e3::Expr,o4::Any,e5::Expr,o6::Any)
    Expr(:call,:sort!,expr(o1),e2,e3,expr(o4),e5,expr(o6))
end
function sort!(e1::Expr,e2::Expr,e3::Expr,o4::Any,e5::Expr,o6::Any)
    Expr(:call,:sort!,e1,e2,e3,expr(o4),e5,expr(o6))
end
function sort!(o1::Any,o2::Any,o3::Any,e4::Expr,e5::Expr,o6::Any)
    Expr(:call,:sort!,expr(o1),expr(o2),expr(o3),e4,e5,expr(o6))
end
function sort!(e1::Expr,o2::Any,o3::Any,e4::Expr,e5::Expr,o6::Any)
    Expr(:call,:sort!,e1,expr(o2),expr(o3),e4,e5,expr(o6))
end
function sort!(o1::Any,e2::Expr,o3::Any,e4::Expr,e5::Expr,o6::Any)
    Expr(:call,:sort!,expr(o1),e2,expr(o3),e4,e5,expr(o6))
end
function sort!(e1::Expr,e2::Expr,o3::Any,e4::Expr,e5::Expr,o6::Any)
    Expr(:call,:sort!,e1,e2,expr(o3),e4,e5,expr(o6))
end
function sort!(o1::Any,o2::Any,e3::Expr,e4::Expr,e5::Expr,o6::Any)
    Expr(:call,:sort!,expr(o1),expr(o2),e3,e4,e5,expr(o6))
end
function sort!(e1::Expr,o2::Any,e3::Expr,e4::Expr,e5::Expr,o6::Any)
    Expr(:call,:sort!,e1,expr(o2),e3,e4,e5,expr(o6))
end
function sort!(o1::Any,e2::Expr,e3::Expr,e4::Expr,e5::Expr,o6::Any)
    Expr(:call,:sort!,expr(o1),e2,e3,e4,e5,expr(o6))
end
function sort!(e1::Expr,e2::Expr,e3::Expr,e4::Expr,e5::Expr,o6::Any)
    Expr(:call,:sort!,e1,e2,e3,e4,e5,expr(o6))
end
function sort!(e1::Expr,e2::Expr,e3::Expr,e4::Expr,e5::Expr,e6::Expr)
    Expr(:call,:sort!,e1,e2,e3,e4,e5,e6)
end
function sort!(e1::Expr)
    Expr(:call,:sort!,e1)
end
function sortcols(e1::Expr)
    Expr(:call,:sortcols,e1)
end
function sortperm(e1::Expr)
    Expr(:call,:sortperm,e1)
end
function sortperm!(e1::Expr,o2::Any)
    Expr(:call,:sortperm!,e1,expr(o2))
end
function sortperm!(o1::Any,e2::Expr)
    Expr(:call,:sortperm!,expr(o1),e2)
end
function sortperm!(e1::Expr,e2::Expr)
    Expr(:call,:sortperm!,e1,e2)
end
function sortrows(e1::Expr)
    Expr(:call,:sortrows,e1)
end
function sparse(o1::Any,o2::Any,e3::Expr)
    Expr(:call,:sparse,expr(o1),expr(o2),e3)
end
function sparse(o1::Any,e2::Expr,e3::Expr)
    Expr(:call,:sparse,expr(o1),e2,e3)
end
function sparse(e1::Expr,o2::Any,e3::Expr)
    Expr(:call,:sparse,e1,expr(o2),e3)
end
function sparse(e1::Expr,e2::Expr,e3::Expr)
    Expr(:call,:sparse,e1,e2,e3)
end
function sparse(o1::Any,o2::Any,e3::Expr,o4::Any,o5::Any)
    Expr(:call,:sparse,expr(o1),expr(o2),e3,expr(o4),expr(o5))
end
function sparse(o1::Any,o2::Any,e3::Expr,e4::Expr,o5::Any)
    Expr(:call,:sparse,expr(o1),expr(o2),e3,e4,expr(o5))
end
function sparse(o1::Any,e2::Expr,e3::Expr,o4::Any,o5::Any)
    Expr(:call,:sparse,expr(o1),e2,e3,expr(o4),expr(o5))
end
function sparse(o1::Any,e2::Expr,e3::Expr,e4::Expr,o5::Any)
    Expr(:call,:sparse,expr(o1),e2,e3,e4,expr(o5))
end
function sparse(o1::Any,o2::Any,e3::Expr,o4::Any,e5::Expr)
    Expr(:call,:sparse,expr(o1),expr(o2),e3,expr(o4),e5)
end
function sparse(o1::Any,o2::Any,e3::Expr,e4::Expr,e5::Expr)
    Expr(:call,:sparse,expr(o1),expr(o2),e3,e4,e5)
end
function sparse(o1::Any,e2::Expr,e3::Expr,o4::Any,e5::Expr)
    Expr(:call,:sparse,expr(o1),e2,e3,expr(o4),e5)
end
function sparse(o1::Any,e2::Expr,e3::Expr,e4::Expr,e5::Expr)
    Expr(:call,:sparse,expr(o1),e2,e3,e4,e5)
end
function sparse(e1::Expr,o2::Any,e3::Expr,o4::Any,o5::Any)
    Expr(:call,:sparse,e1,expr(o2),e3,expr(o4),expr(o5))
end
function sparse(e1::Expr,o2::Any,e3::Expr,e4::Expr,o5::Any)
    Expr(:call,:sparse,e1,expr(o2),e3,e4,expr(o5))
end
function sparse(e1::Expr,e2::Expr,e3::Expr,o4::Any,o5::Any)
    Expr(:call,:sparse,e1,e2,e3,expr(o4),expr(o5))
end
function sparse(e1::Expr,e2::Expr,e3::Expr,e4::Expr,o5::Any)
    Expr(:call,:sparse,e1,e2,e3,e4,expr(o5))
end
function sparse(e1::Expr,o2::Any,e3::Expr,o4::Any,e5::Expr)
    Expr(:call,:sparse,e1,expr(o2),e3,expr(o4),e5)
end
function sparse(e1::Expr,o2::Any,e3::Expr,e4::Expr,e5::Expr)
    Expr(:call,:sparse,e1,expr(o2),e3,e4,e5)
end
function sparse(e1::Expr,e2::Expr,e3::Expr,o4::Any,e5::Expr)
    Expr(:call,:sparse,e1,e2,e3,expr(o4),e5)
end
function sparse(e1::Expr,e2::Expr,e3::Expr,e4::Expr,e5::Expr)
    Expr(:call,:sparse,e1,e2,e3,e4,e5)
end
function sparse(o1::Any,o2::Any,e3::Expr,o4::Any,o5::Any,o6::Any)
    Expr(:call,:sparse,expr(o1),expr(o2),e3,expr(o4),expr(o5),expr(o6))
end
function sparse(o1::Any,o2::Any,e3::Expr,e4::Expr,o5::Any,o6::Any)
    Expr(:call,:sparse,expr(o1),expr(o2),e3,e4,expr(o5),expr(o6))
end
function sparse(o1::Any,e2::Expr,e3::Expr,o4::Any,o5::Any,o6::Any)
    Expr(:call,:sparse,expr(o1),e2,e3,expr(o4),expr(o5),expr(o6))
end
function sparse(o1::Any,e2::Expr,e3::Expr,e4::Expr,o5::Any,o6::Any)
    Expr(:call,:sparse,expr(o1),e2,e3,e4,expr(o5),expr(o6))
end
function sparse(o1::Any,o2::Any,e3::Expr,o4::Any,e5::Expr,o6::Any)
    Expr(:call,:sparse,expr(o1),expr(o2),e3,expr(o4),e5,expr(o6))
end
function sparse(o1::Any,o2::Any,e3::Expr,e4::Expr,e5::Expr,o6::Any)
    Expr(:call,:sparse,expr(o1),expr(o2),e3,e4,e5,expr(o6))
end
function sparse(o1::Any,e2::Expr,e3::Expr,o4::Any,e5::Expr,o6::Any)
    Expr(:call,:sparse,expr(o1),e2,e3,expr(o4),e5,expr(o6))
end
function sparse(o1::Any,e2::Expr,e3::Expr,e4::Expr,e5::Expr,o6::Any)
    Expr(:call,:sparse,expr(o1),e2,e3,e4,e5,expr(o6))
end
function sparse(o1::Any,o2::Any,e3::Expr,o4::Any,o5::Any,e6::Expr)
    Expr(:call,:sparse,expr(o1),expr(o2),e3,expr(o4),expr(o5),e6)
end
function sparse(o1::Any,o2::Any,e3::Expr,e4::Expr,o5::Any,e6::Expr)
    Expr(:call,:sparse,expr(o1),expr(o2),e3,e4,expr(o5),e6)
end
function sparse(o1::Any,e2::Expr,e3::Expr,o4::Any,o5::Any,e6::Expr)
    Expr(:call,:sparse,expr(o1),e2,e3,expr(o4),expr(o5),e6)
end
function sparse(o1::Any,e2::Expr,e3::Expr,e4::Expr,o5::Any,e6::Expr)
    Expr(:call,:sparse,expr(o1),e2,e3,e4,expr(o5),e6)
end
function sparse(o1::Any,o2::Any,e3::Expr,o4::Any,e5::Expr,e6::Expr)
    Expr(:call,:sparse,expr(o1),expr(o2),e3,expr(o4),e5,e6)
end
function sparse(o1::Any,o2::Any,e3::Expr,e4::Expr,e5::Expr,e6::Expr)
    Expr(:call,:sparse,expr(o1),expr(o2),e3,e4,e5,e6)
end
function sparse(o1::Any,e2::Expr,e3::Expr,o4::Any,e5::Expr,e6::Expr)
    Expr(:call,:sparse,expr(o1),e2,e3,expr(o4),e5,e6)
end
function sparse(o1::Any,e2::Expr,e3::Expr,e4::Expr,e5::Expr,e6::Expr)
    Expr(:call,:sparse,expr(o1),e2,e3,e4,e5,e6)
end
function sparse(e1::Expr,o2::Any,e3::Expr,o4::Any,o5::Any,o6::Any)
    Expr(:call,:sparse,e1,expr(o2),e3,expr(o4),expr(o5),expr(o6))
end
function sparse(e1::Expr,o2::Any,e3::Expr,e4::Expr,o5::Any,o6::Any)
    Expr(:call,:sparse,e1,expr(o2),e3,e4,expr(o5),expr(o6))
end
function sparse(e1::Expr,e2::Expr,e3::Expr,o4::Any,o5::Any,o6::Any)
    Expr(:call,:sparse,e1,e2,e3,expr(o4),expr(o5),expr(o6))
end
function sparse(e1::Expr,e2::Expr,e3::Expr,e4::Expr,o5::Any,o6::Any)
    Expr(:call,:sparse,e1,e2,e3,e4,expr(o5),expr(o6))
end
function sparse(e1::Expr,o2::Any,e3::Expr,o4::Any,e5::Expr,o6::Any)
    Expr(:call,:sparse,e1,expr(o2),e3,expr(o4),e5,expr(o6))
end
function sparse(e1::Expr,o2::Any,e3::Expr,e4::Expr,e5::Expr,o6::Any)
    Expr(:call,:sparse,e1,expr(o2),e3,e4,e5,expr(o6))
end
function sparse(e1::Expr,e2::Expr,e3::Expr,o4::Any,e5::Expr,o6::Any)
    Expr(:call,:sparse,e1,e2,e3,expr(o4),e5,expr(o6))
end
function sparse(e1::Expr,e2::Expr,e3::Expr,e4::Expr,e5::Expr,o6::Any)
    Expr(:call,:sparse,e1,e2,e3,e4,e5,expr(o6))
end
function sparse(e1::Expr,o2::Any,e3::Expr,o4::Any,o5::Any,e6::Expr)
    Expr(:call,:sparse,e1,expr(o2),e3,expr(o4),expr(o5),e6)
end
function sparse(e1::Expr,o2::Any,e3::Expr,e4::Expr,o5::Any,e6::Expr)
    Expr(:call,:sparse,e1,expr(o2),e3,e4,expr(o5),e6)
end
function sparse(e1::Expr,e2::Expr,e3::Expr,o4::Any,o5::Any,e6::Expr)
    Expr(:call,:sparse,e1,e2,e3,expr(o4),expr(o5),e6)
end
function sparse(e1::Expr,e2::Expr,e3::Expr,e4::Expr,o5::Any,e6::Expr)
    Expr(:call,:sparse,e1,e2,e3,e4,expr(o5),e6)
end
function sparse(e1::Expr,o2::Any,e3::Expr,o4::Any,e5::Expr,e6::Expr)
    Expr(:call,:sparse,e1,expr(o2),e3,expr(o4),e5,e6)
end
function sparse(e1::Expr,o2::Any,e3::Expr,e4::Expr,e5::Expr,e6::Expr)
    Expr(:call,:sparse,e1,expr(o2),e3,e4,e5,e6)
end
function sparse(e1::Expr,e2::Expr,e3::Expr,o4::Any,e5::Expr,e6::Expr)
    Expr(:call,:sparse,e1,e2,e3,expr(o4),e5,e6)
end
function sparse(e1::Expr,e2::Expr,e3::Expr,e4::Expr,e5::Expr,e6::Expr)
    Expr(:call,:sparse,e1,e2,e3,e4,e5,e6)
end
function sparse(e1::Expr)
    Expr(:call,:sparse,e1)
end
function sparsevec(e1::Expr,o2::Any,o3::Any,o4::Any)
    Expr(:call,:sparsevec,e1,expr(o2),expr(o3),expr(o4))
end
function sparsevec(o1::Any,e2::Expr,o3::Any,o4::Any)
    Expr(:call,:sparsevec,expr(o1),e2,expr(o3),expr(o4))
end
function sparsevec(e1::Expr,e2::Expr,o3::Any,o4::Any)
    Expr(:call,:sparsevec,e1,e2,expr(o3),expr(o4))
end
function sparsevec(o1::Any,o2::Any,e3::Expr,o4::Any)
    Expr(:call,:sparsevec,expr(o1),expr(o2),e3,expr(o4))
end
function sparsevec(e1::Expr,o2::Any,e3::Expr,o4::Any)
    Expr(:call,:sparsevec,e1,expr(o2),e3,expr(o4))
end
function sparsevec(o1::Any,e2::Expr,e3::Expr,o4::Any)
    Expr(:call,:sparsevec,expr(o1),e2,e3,expr(o4))
end
function sparsevec(e1::Expr,e2::Expr,e3::Expr,o4::Any)
    Expr(:call,:sparsevec,e1,e2,e3,expr(o4))
end
function sparsevec(o1::Any,o2::Any,o3::Any,e4::Expr)
    Expr(:call,:sparsevec,expr(o1),expr(o2),expr(o3),e4)
end
function sparsevec(e1::Expr,o2::Any,o3::Any,e4::Expr)
    Expr(:call,:sparsevec,e1,expr(o2),expr(o3),e4)
end
function sparsevec(o1::Any,e2::Expr,o3::Any,e4::Expr)
    Expr(:call,:sparsevec,expr(o1),e2,expr(o3),e4)
end
function sparsevec(e1::Expr,e2::Expr,o3::Any,e4::Expr)
    Expr(:call,:sparsevec,e1,e2,expr(o3),e4)
end
function sparsevec(o1::Any,o2::Any,e3::Expr,e4::Expr)
    Expr(:call,:sparsevec,expr(o1),expr(o2),e3,e4)
end
function sparsevec(e1::Expr,o2::Any,e3::Expr,e4::Expr)
    Expr(:call,:sparsevec,e1,expr(o2),e3,e4)
end
function sparsevec(o1::Any,e2::Expr,e3::Expr,e4::Expr)
    Expr(:call,:sparsevec,expr(o1),e2,e3,e4)
end
function sparsevec(e1::Expr,e2::Expr,e3::Expr,e4::Expr)
    Expr(:call,:sparsevec,e1,e2,e3,e4)
end
function sparsevec(e1::Expr,o2::Any)
    Expr(:call,:sparsevec,e1,expr(o2))
end
function sparsevec(o1::Any,e2::Expr)
    Expr(:call,:sparsevec,expr(o1),e2)
end
function sparsevec(e1::Expr,e2::Expr)
    Expr(:call,:sparsevec,e1,e2)
end
function sparsevec(e1::Expr,o2::Any,o3::Any)
    Expr(:call,:sparsevec,e1,expr(o2),expr(o3))
end
function sparsevec(o1::Any,e2::Expr,o3::Any)
    Expr(:call,:sparsevec,expr(o1),e2,expr(o3))
end
function sparsevec(e1::Expr,e2::Expr,o3::Any)
    Expr(:call,:sparsevec,e1,e2,expr(o3))
end
function sparsevec(o1::Any,o2::Any,e3::Expr)
    Expr(:call,:sparsevec,expr(o1),expr(o2),e3)
end
function sparsevec(e1::Expr,o2::Any,e3::Expr)
    Expr(:call,:sparsevec,e1,expr(o2),e3)
end
function sparsevec(o1::Any,e2::Expr,e3::Expr)
    Expr(:call,:sparsevec,expr(o1),e2,e3)
end
function sparsevec(e1::Expr,e2::Expr,e3::Expr)
    Expr(:call,:sparsevec,e1,e2,e3)
end
function sparsevec(e1::Expr)
    Expr(:call,:sparsevec,e1)
end
function spawn(e1::Expr,o2::Any,o3::Any,o4::Any)
    Expr(:call,:spawn,e1,expr(o2),expr(o3),expr(o4))
end
function spawn(o1::Any,e2::Expr,o3::Any,o4::Any)
    Expr(:call,:spawn,expr(o1),e2,expr(o3),expr(o4))
end
function spawn(e1::Expr,e2::Expr,o3::Any,o4::Any)
    Expr(:call,:spawn,e1,e2,expr(o3),expr(o4))
end
function spawn(o1::Any,o2::Any,e3::Expr,o4::Any)
    Expr(:call,:spawn,expr(o1),expr(o2),e3,expr(o4))
end
function spawn(e1::Expr,o2::Any,e3::Expr,o4::Any)
    Expr(:call,:spawn,e1,expr(o2),e3,expr(o4))
end
function spawn(o1::Any,e2::Expr,e3::Expr,o4::Any)
    Expr(:call,:spawn,expr(o1),e2,e3,expr(o4))
end
function spawn(e1::Expr,e2::Expr,e3::Expr,o4::Any)
    Expr(:call,:spawn,e1,e2,e3,expr(o4))
end
function spawn(o1::Any,o2::Any,o3::Any,e4::Expr)
    Expr(:call,:spawn,expr(o1),expr(o2),expr(o3),e4)
end
function spawn(e1::Expr,o2::Any,o3::Any,e4::Expr)
    Expr(:call,:spawn,e1,expr(o2),expr(o3),e4)
end
function spawn(o1::Any,e2::Expr,o3::Any,e4::Expr)
    Expr(:call,:spawn,expr(o1),e2,expr(o3),e4)
end
function spawn(e1::Expr,e2::Expr,o3::Any,e4::Expr)
    Expr(:call,:spawn,e1,e2,expr(o3),e4)
end
function spawn(o1::Any,o2::Any,e3::Expr,e4::Expr)
    Expr(:call,:spawn,expr(o1),expr(o2),e3,e4)
end
function spawn(e1::Expr,o2::Any,e3::Expr,e4::Expr)
    Expr(:call,:spawn,e1,expr(o2),e3,e4)
end
function spawn(o1::Any,e2::Expr,e3::Expr,e4::Expr)
    Expr(:call,:spawn,expr(o1),e2,e3,e4)
end
function spawn(e1::Expr,e2::Expr,e3::Expr,e4::Expr)
    Expr(:call,:spawn,e1,e2,e3,e4)
end
function spawn(e1::Expr,o2::Any)
    Expr(:call,:spawn,e1,expr(o2))
end
function spawn(o1::Any,e2::Expr)
    Expr(:call,:spawn,expr(o1),e2)
end
function spawn(e1::Expr,e2::Expr)
    Expr(:call,:spawn,e1,e2)
end
function spdiagm(o1::Any,o2::Any,e3::Expr,o4::Any)
    Expr(:call,:spdiagm,expr(o1),expr(o2),e3,expr(o4))
end
function spdiagm(o1::Any,o2::Any,o3::Any,e4::Expr)
    Expr(:call,:spdiagm,expr(o1),expr(o2),expr(o3),e4)
end
function spdiagm(o1::Any,o2::Any,e3::Expr,e4::Expr)
    Expr(:call,:spdiagm,expr(o1),expr(o2),e3,e4)
end
function spdiagm(o1::Any,e2::Expr,e3::Expr,e4::Expr)
    Expr(:call,:spdiagm,expr(o1),e2,e3,e4)
end
function spdiagm(e1::Expr,o2::Any,e3::Expr,e4::Expr)
    Expr(:call,:spdiagm,e1,expr(o2),e3,e4)
end
function spdiagm(e1::Expr,e2::Expr,e3::Expr,e4::Expr)
    Expr(:call,:spdiagm,e1,e2,e3,e4)
end
function spdiagm(e1::Expr)
    Expr(:call,:spdiagm,e1)
end
function specialized_binary(e1::Expr)
    Expr(:call,:specialized_binary,e1)
end
function specialized_bitwise_binary(e1::Expr)
    Expr(:call,:specialized_bitwise_binary,e1)
end
function specialized_bitwise_unary(e1::Expr)
    Expr(:call,:specialized_bitwise_unary,e1)
end
function specialized_unary(e1::Expr)
    Expr(:call,:specialized_unary,e1)
end
function speye(e1::Expr,o2::Any)
    Expr(:call,:speye,e1,expr(o2))
end
function speye(o1::Any,e2::Expr)
    Expr(:call,:speye,expr(o1),e2)
end
function speye(e1::Expr,e2::Expr)
    Expr(:call,:speye,e1,e2)
end
function speye(e1::Expr,o2::Any,o3::Any)
    Expr(:call,:speye,e1,expr(o2),expr(o3))
end
function speye(o1::Any,e2::Expr,o3::Any)
    Expr(:call,:speye,expr(o1),e2,expr(o3))
end
function speye(e1::Expr,e2::Expr,o3::Any)
    Expr(:call,:speye,e1,e2,expr(o3))
end
function speye(o1::Any,o2::Any,e3::Expr)
    Expr(:call,:speye,expr(o1),expr(o2),e3)
end
function speye(e1::Expr,o2::Any,e3::Expr)
    Expr(:call,:speye,e1,expr(o2),e3)
end
function speye(o1::Any,e2::Expr,e3::Expr)
    Expr(:call,:speye,expr(o1),e2,e3)
end
function speye(e1::Expr,e2::Expr,e3::Expr)
    Expr(:call,:speye,e1,e2,e3)
end
function speye(e1::Expr)
    Expr(:call,:speye,e1)
end
function splice!(e1::Expr,o2::Any)
    Expr(:call,:splice!,e1,expr(o2))
end
function splice!(o1::Any,e2::Expr)
    Expr(:call,:splice!,expr(o1),e2)
end
function splice!(e1::Expr,e2::Expr)
    Expr(:call,:splice!,e1,e2)
end
function splice!(e1::Expr,o2::Any,o3::Any)
    Expr(:call,:splice!,e1,expr(o2),expr(o3))
end
function splice!(o1::Any,e2::Expr,o3::Any)
    Expr(:call,:splice!,expr(o1),e2,expr(o3))
end
function splice!(e1::Expr,e2::Expr,o3::Any)
    Expr(:call,:splice!,e1,e2,expr(o3))
end
function splice!(e1::Expr,e2::Expr,e3::Expr)
    Expr(:call,:splice!,e1,e2,e3)
end
function split(e1::Expr,o2::Any)
    Expr(:call,:split,e1,expr(o2))
end
function split(e1::Expr,e2::Expr)
    Expr(:call,:split,e1,e2)
end
function split(e1::Expr)
    Expr(:call,:split,e1)
end
function splitdir(e1::Expr)
    Expr(:call,:splitdir,e1)
end
function splitdrive(e1::Expr)
    Expr(:call,:splitdrive,e1)
end
function splitext(e1::Expr)
    Expr(:call,:splitext,e1)
end
function spones(e1::Expr)
    Expr(:call,:spones,e1)
end
function sprand(e1::Expr,o2::Any,o3::Any,o4::Any)
    Expr(:call,:sprand,e1,expr(o2),expr(o3),expr(o4))
end
function sprand(o1::Any,e2::Expr,o3::Any,o4::Any)
    Expr(:call,:sprand,expr(o1),e2,expr(o3),expr(o4))
end
function sprand(e1::Expr,e2::Expr,o3::Any,o4::Any)
    Expr(:call,:sprand,e1,e2,expr(o3),expr(o4))
end
function sprand(o1::Any,o2::Any,e3::Expr,o4::Any)
    Expr(:call,:sprand,expr(o1),expr(o2),e3,expr(o4))
end
function sprand(e1::Expr,o2::Any,e3::Expr,o4::Any)
    Expr(:call,:sprand,e1,expr(o2),e3,expr(o4))
end
function sprand(o1::Any,e2::Expr,e3::Expr,o4::Any)
    Expr(:call,:sprand,expr(o1),e2,e3,expr(o4))
end
function sprand(e1::Expr,e2::Expr,e3::Expr,o4::Any)
    Expr(:call,:sprand,e1,e2,e3,expr(o4))
end
function sprand(o1::Any,o2::Any,o3::Any,e4::Expr)
    Expr(:call,:sprand,expr(o1),expr(o2),expr(o3),e4)
end
function sprand(e1::Expr,o2::Any,o3::Any,e4::Expr)
    Expr(:call,:sprand,e1,expr(o2),expr(o3),e4)
end
function sprand(o1::Any,e2::Expr,o3::Any,e4::Expr)
    Expr(:call,:sprand,expr(o1),e2,expr(o3),e4)
end
function sprand(e1::Expr,e2::Expr,o3::Any,e4::Expr)
    Expr(:call,:sprand,e1,e2,expr(o3),e4)
end
function sprand(o1::Any,o2::Any,e3::Expr,e4::Expr)
    Expr(:call,:sprand,expr(o1),expr(o2),e3,e4)
end
function sprand(e1::Expr,o2::Any,e3::Expr,e4::Expr)
    Expr(:call,:sprand,e1,expr(o2),e3,e4)
end
function sprand(o1::Any,e2::Expr,e3::Expr,e4::Expr)
    Expr(:call,:sprand,expr(o1),e2,e3,e4)
end
function sprand(e1::Expr,e2::Expr,e3::Expr,e4::Expr)
    Expr(:call,:sprand,e1,e2,e3,e4)
end
function sprand(e1::Expr,o2::Any)
    Expr(:call,:sprand,e1,expr(o2))
end
function sprand(o1::Any,e2::Expr)
    Expr(:call,:sprand,expr(o1),e2)
end
function sprand(e1::Expr,e2::Expr)
    Expr(:call,:sprand,e1,e2)
end
function sprand(e1::Expr,o2::Any,o3::Any)
    Expr(:call,:sprand,e1,expr(o2),expr(o3))
end
function sprand(o1::Any,e2::Expr,o3::Any)
    Expr(:call,:sprand,expr(o1),e2,expr(o3))
end
function sprand(e1::Expr,e2::Expr,o3::Any)
    Expr(:call,:sprand,e1,e2,expr(o3))
end
function sprand(o1::Any,o2::Any,e3::Expr)
    Expr(:call,:sprand,expr(o1),expr(o2),e3)
end
function sprand(e1::Expr,o2::Any,e3::Expr)
    Expr(:call,:sprand,e1,expr(o2),e3)
end
function sprand(o1::Any,e2::Expr,e3::Expr)
    Expr(:call,:sprand,expr(o1),e2,e3)
end
function sprand(e1::Expr,e2::Expr,e3::Expr)
    Expr(:call,:sprand,e1,e2,e3)
end
function sprand(e1::Expr,o2::Any,o3::Any,o4::Any,o5::Any)
    Expr(:call,:sprand,e1,expr(o2),expr(o3),expr(o4),expr(o5))
end
function sprand(o1::Any,e2::Expr,o3::Any,o4::Any,o5::Any)
    Expr(:call,:sprand,expr(o1),e2,expr(o3),expr(o4),expr(o5))
end
function sprand(e1::Expr,e2::Expr,o3::Any,o4::Any,o5::Any)
    Expr(:call,:sprand,e1,e2,expr(o3),expr(o4),expr(o5))
end
function sprand(o1::Any,o2::Any,e3::Expr,o4::Any,o5::Any)
    Expr(:call,:sprand,expr(o1),expr(o2),e3,expr(o4),expr(o5))
end
function sprand(e1::Expr,o2::Any,e3::Expr,o4::Any,o5::Any)
    Expr(:call,:sprand,e1,expr(o2),e3,expr(o4),expr(o5))
end
function sprand(o1::Any,e2::Expr,e3::Expr,o4::Any,o5::Any)
    Expr(:call,:sprand,expr(o1),e2,e3,expr(o4),expr(o5))
end
function sprand(e1::Expr,e2::Expr,e3::Expr,o4::Any,o5::Any)
    Expr(:call,:sprand,e1,e2,e3,expr(o4),expr(o5))
end
function sprand(o1::Any,o2::Any,o3::Any,e4::Expr,o5::Any)
    Expr(:call,:sprand,expr(o1),expr(o2),expr(o3),e4,expr(o5))
end
function sprand(e1::Expr,o2::Any,o3::Any,e4::Expr,o5::Any)
    Expr(:call,:sprand,e1,expr(o2),expr(o3),e4,expr(o5))
end
function sprand(o1::Any,e2::Expr,o3::Any,e4::Expr,o5::Any)
    Expr(:call,:sprand,expr(o1),e2,expr(o3),e4,expr(o5))
end
function sprand(e1::Expr,e2::Expr,o3::Any,e4::Expr,o5::Any)
    Expr(:call,:sprand,e1,e2,expr(o3),e4,expr(o5))
end
function sprand(o1::Any,o2::Any,e3::Expr,e4::Expr,o5::Any)
    Expr(:call,:sprand,expr(o1),expr(o2),e3,e4,expr(o5))
end
function sprand(e1::Expr,o2::Any,e3::Expr,e4::Expr,o5::Any)
    Expr(:call,:sprand,e1,expr(o2),e3,e4,expr(o5))
end
function sprand(o1::Any,e2::Expr,e3::Expr,e4::Expr,o5::Any)
    Expr(:call,:sprand,expr(o1),e2,e3,e4,expr(o5))
end
function sprand(e1::Expr,e2::Expr,e3::Expr,e4::Expr,o5::Any)
    Expr(:call,:sprand,e1,e2,e3,e4,expr(o5))
end
function sprand(o1::Any,o2::Any,o3::Any,o4::Any,e5::Expr)
    Expr(:call,:sprand,expr(o1),expr(o2),expr(o3),expr(o4),e5)
end
function sprand(e1::Expr,o2::Any,o3::Any,o4::Any,e5::Expr)
    Expr(:call,:sprand,e1,expr(o2),expr(o3),expr(o4),e5)
end
function sprand(o1::Any,e2::Expr,o3::Any,o4::Any,e5::Expr)
    Expr(:call,:sprand,expr(o1),e2,expr(o3),expr(o4),e5)
end
function sprand(e1::Expr,e2::Expr,o3::Any,o4::Any,e5::Expr)
    Expr(:call,:sprand,e1,e2,expr(o3),expr(o4),e5)
end
function sprand(o1::Any,o2::Any,e3::Expr,o4::Any,e5::Expr)
    Expr(:call,:sprand,expr(o1),expr(o2),e3,expr(o4),e5)
end
function sprand(e1::Expr,o2::Any,e3::Expr,o4::Any,e5::Expr)
    Expr(:call,:sprand,e1,expr(o2),e3,expr(o4),e5)
end
function sprand(o1::Any,e2::Expr,e3::Expr,o4::Any,e5::Expr)
    Expr(:call,:sprand,expr(o1),e2,e3,expr(o4),e5)
end
function sprand(e1::Expr,e2::Expr,e3::Expr,o4::Any,e5::Expr)
    Expr(:call,:sprand,e1,e2,e3,expr(o4),e5)
end
function sprand(o1::Any,o2::Any,o3::Any,e4::Expr,e5::Expr)
    Expr(:call,:sprand,expr(o1),expr(o2),expr(o3),e4,e5)
end
function sprand(e1::Expr,o2::Any,o3::Any,e4::Expr,e5::Expr)
    Expr(:call,:sprand,e1,expr(o2),expr(o3),e4,e5)
end
function sprand(o1::Any,e2::Expr,o3::Any,e4::Expr,e5::Expr)
    Expr(:call,:sprand,expr(o1),e2,expr(o3),e4,e5)
end
function sprand(e1::Expr,e2::Expr,o3::Any,e4::Expr,e5::Expr)
    Expr(:call,:sprand,e1,e2,expr(o3),e4,e5)
end
function sprand(o1::Any,o2::Any,e3::Expr,e4::Expr,e5::Expr)
    Expr(:call,:sprand,expr(o1),expr(o2),e3,e4,e5)
end
function sprand(e1::Expr,o2::Any,e3::Expr,e4::Expr,e5::Expr)
    Expr(:call,:sprand,e1,expr(o2),e3,e4,e5)
end
function sprand(o1::Any,e2::Expr,e3::Expr,e4::Expr,e5::Expr)
    Expr(:call,:sprand,expr(o1),e2,e3,e4,e5)
end
function sprand(e1::Expr,e2::Expr,e3::Expr,e4::Expr,e5::Expr)
    Expr(:call,:sprand,e1,e2,e3,e4,e5)
end
function sprand(e1::Expr,o2::Any,o3::Any,o4::Any,o5::Any,o6::Any)
    Expr(:call,:sprand,e1,expr(o2),expr(o3),expr(o4),expr(o5),expr(o6))
end
function sprand(o1::Any,e2::Expr,o3::Any,o4::Any,o5::Any,o6::Any)
    Expr(:call,:sprand,expr(o1),e2,expr(o3),expr(o4),expr(o5),expr(o6))
end
function sprand(e1::Expr,e2::Expr,o3::Any,o4::Any,o5::Any,o6::Any)
    Expr(:call,:sprand,e1,e2,expr(o3),expr(o4),expr(o5),expr(o6))
end
function sprand(o1::Any,o2::Any,e3::Expr,o4::Any,o5::Any,o6::Any)
    Expr(:call,:sprand,expr(o1),expr(o2),e3,expr(o4),expr(o5),expr(o6))
end
function sprand(e1::Expr,o2::Any,e3::Expr,o4::Any,o5::Any,o6::Any)
    Expr(:call,:sprand,e1,expr(o2),e3,expr(o4),expr(o5),expr(o6))
end
function sprand(o1::Any,e2::Expr,e3::Expr,o4::Any,o5::Any,o6::Any)
    Expr(:call,:sprand,expr(o1),e2,e3,expr(o4),expr(o5),expr(o6))
end
function sprand(e1::Expr,e2::Expr,e3::Expr,o4::Any,o5::Any,o6::Any)
    Expr(:call,:sprand,e1,e2,e3,expr(o4),expr(o5),expr(o6))
end
function sprand(o1::Any,o2::Any,o3::Any,e4::Expr,o5::Any,o6::Any)
    Expr(:call,:sprand,expr(o1),expr(o2),expr(o3),e4,expr(o5),expr(o6))
end
function sprand(e1::Expr,o2::Any,o3::Any,e4::Expr,o5::Any,o6::Any)
    Expr(:call,:sprand,e1,expr(o2),expr(o3),e4,expr(o5),expr(o6))
end
function sprand(o1::Any,e2::Expr,o3::Any,e4::Expr,o5::Any,o6::Any)
    Expr(:call,:sprand,expr(o1),e2,expr(o3),e4,expr(o5),expr(o6))
end
function sprand(e1::Expr,e2::Expr,o3::Any,e4::Expr,o5::Any,o6::Any)
    Expr(:call,:sprand,e1,e2,expr(o3),e4,expr(o5),expr(o6))
end
function sprand(o1::Any,o2::Any,e3::Expr,e4::Expr,o5::Any,o6::Any)
    Expr(:call,:sprand,expr(o1),expr(o2),e3,e4,expr(o5),expr(o6))
end
function sprand(e1::Expr,o2::Any,e3::Expr,e4::Expr,o5::Any,o6::Any)
    Expr(:call,:sprand,e1,expr(o2),e3,e4,expr(o5),expr(o6))
end
function sprand(o1::Any,e2::Expr,e3::Expr,e4::Expr,o5::Any,o6::Any)
    Expr(:call,:sprand,expr(o1),e2,e3,e4,expr(o5),expr(o6))
end
function sprand(e1::Expr,e2::Expr,e3::Expr,e4::Expr,o5::Any,o6::Any)
    Expr(:call,:sprand,e1,e2,e3,e4,expr(o5),expr(o6))
end
function sprand(o1::Any,o2::Any,o3::Any,o4::Any,e5::Expr,o6::Any)
    Expr(:call,:sprand,expr(o1),expr(o2),expr(o3),expr(o4),e5,expr(o6))
end
function sprand(e1::Expr,o2::Any,o3::Any,o4::Any,e5::Expr,o6::Any)
    Expr(:call,:sprand,e1,expr(o2),expr(o3),expr(o4),e5,expr(o6))
end
function sprand(o1::Any,e2::Expr,o3::Any,o4::Any,e5::Expr,o6::Any)
    Expr(:call,:sprand,expr(o1),e2,expr(o3),expr(o4),e5,expr(o6))
end
function sprand(e1::Expr,e2::Expr,o3::Any,o4::Any,e5::Expr,o6::Any)
    Expr(:call,:sprand,e1,e2,expr(o3),expr(o4),e5,expr(o6))
end
function sprand(o1::Any,o2::Any,e3::Expr,o4::Any,e5::Expr,o6::Any)
    Expr(:call,:sprand,expr(o1),expr(o2),e3,expr(o4),e5,expr(o6))
end
function sprand(e1::Expr,o2::Any,e3::Expr,o4::Any,e5::Expr,o6::Any)
    Expr(:call,:sprand,e1,expr(o2),e3,expr(o4),e5,expr(o6))
end
function sprand(o1::Any,e2::Expr,e3::Expr,o4::Any,e5::Expr,o6::Any)
    Expr(:call,:sprand,expr(o1),e2,e3,expr(o4),e5,expr(o6))
end
function sprand(e1::Expr,e2::Expr,e3::Expr,o4::Any,e5::Expr,o6::Any)
    Expr(:call,:sprand,e1,e2,e3,expr(o4),e5,expr(o6))
end
function sprand(o1::Any,o2::Any,o3::Any,e4::Expr,e5::Expr,o6::Any)
    Expr(:call,:sprand,expr(o1),expr(o2),expr(o3),e4,e5,expr(o6))
end
function sprand(e1::Expr,o2::Any,o3::Any,e4::Expr,e5::Expr,o6::Any)
    Expr(:call,:sprand,e1,expr(o2),expr(o3),e4,e5,expr(o6))
end
function sprand(o1::Any,e2::Expr,o3::Any,e4::Expr,e5::Expr,o6::Any)
    Expr(:call,:sprand,expr(o1),e2,expr(o3),e4,e5,expr(o6))
end
function sprand(e1::Expr,e2::Expr,o3::Any,e4::Expr,e5::Expr,o6::Any)
    Expr(:call,:sprand,e1,e2,expr(o3),e4,e5,expr(o6))
end
function sprand(o1::Any,o2::Any,e3::Expr,e4::Expr,e5::Expr,o6::Any)
    Expr(:call,:sprand,expr(o1),expr(o2),e3,e4,e5,expr(o6))
end
function sprand(e1::Expr,o2::Any,e3::Expr,e4::Expr,e5::Expr,o6::Any)
    Expr(:call,:sprand,e1,expr(o2),e3,e4,e5,expr(o6))
end
function sprand(o1::Any,e2::Expr,e3::Expr,e4::Expr,e5::Expr,o6::Any)
    Expr(:call,:sprand,expr(o1),e2,e3,e4,e5,expr(o6))
end
function sprand(e1::Expr,e2::Expr,e3::Expr,e4::Expr,e5::Expr,o6::Any)
    Expr(:call,:sprand,e1,e2,e3,e4,e5,expr(o6))
end
function sprand(o1::Any,o2::Any,o3::Any,o4::Any,o5::Any,e6::Expr)
    Expr(:call,:sprand,expr(o1),expr(o2),expr(o3),expr(o4),expr(o5),e6)
end
function sprand(e1::Expr,o2::Any,o3::Any,o4::Any,o5::Any,e6::Expr)
    Expr(:call,:sprand,e1,expr(o2),expr(o3),expr(o4),expr(o5),e6)
end
function sprand(o1::Any,e2::Expr,o3::Any,o4::Any,o5::Any,e6::Expr)
    Expr(:call,:sprand,expr(o1),e2,expr(o3),expr(o4),expr(o5),e6)
end
function sprand(e1::Expr,e2::Expr,o3::Any,o4::Any,o5::Any,e6::Expr)
    Expr(:call,:sprand,e1,e2,expr(o3),expr(o4),expr(o5),e6)
end
function sprand(o1::Any,o2::Any,e3::Expr,o4::Any,o5::Any,e6::Expr)
    Expr(:call,:sprand,expr(o1),expr(o2),e3,expr(o4),expr(o5),e6)
end
function sprand(e1::Expr,o2::Any,e3::Expr,o4::Any,o5::Any,e6::Expr)
    Expr(:call,:sprand,e1,expr(o2),e3,expr(o4),expr(o5),e6)
end
function sprand(o1::Any,e2::Expr,e3::Expr,o4::Any,o5::Any,e6::Expr)
    Expr(:call,:sprand,expr(o1),e2,e3,expr(o4),expr(o5),e6)
end
function sprand(e1::Expr,e2::Expr,e3::Expr,o4::Any,o5::Any,e6::Expr)
    Expr(:call,:sprand,e1,e2,e3,expr(o4),expr(o5),e6)
end
function sprand(o1::Any,o2::Any,o3::Any,e4::Expr,o5::Any,e6::Expr)
    Expr(:call,:sprand,expr(o1),expr(o2),expr(o3),e4,expr(o5),e6)
end
function sprand(e1::Expr,o2::Any,o3::Any,e4::Expr,o5::Any,e6::Expr)
    Expr(:call,:sprand,e1,expr(o2),expr(o3),e4,expr(o5),e6)
end
function sprand(o1::Any,e2::Expr,o3::Any,e4::Expr,o5::Any,e6::Expr)
    Expr(:call,:sprand,expr(o1),e2,expr(o3),e4,expr(o5),e6)
end
function sprand(e1::Expr,e2::Expr,o3::Any,e4::Expr,o5::Any,e6::Expr)
    Expr(:call,:sprand,e1,e2,expr(o3),e4,expr(o5),e6)
end
function sprand(o1::Any,o2::Any,e3::Expr,e4::Expr,o5::Any,e6::Expr)
    Expr(:call,:sprand,expr(o1),expr(o2),e3,e4,expr(o5),e6)
end
function sprand(e1::Expr,o2::Any,e3::Expr,e4::Expr,o5::Any,e6::Expr)
    Expr(:call,:sprand,e1,expr(o2),e3,e4,expr(o5),e6)
end
function sprand(o1::Any,e2::Expr,e3::Expr,e4::Expr,o5::Any,e6::Expr)
    Expr(:call,:sprand,expr(o1),e2,e3,e4,expr(o5),e6)
end
function sprand(e1::Expr,e2::Expr,e3::Expr,e4::Expr,o5::Any,e6::Expr)
    Expr(:call,:sprand,e1,e2,e3,e4,expr(o5),e6)
end
function sprand(o1::Any,o2::Any,o3::Any,o4::Any,e5::Expr,e6::Expr)
    Expr(:call,:sprand,expr(o1),expr(o2),expr(o3),expr(o4),e5,e6)
end
function sprand(e1::Expr,o2::Any,o3::Any,o4::Any,e5::Expr,e6::Expr)
    Expr(:call,:sprand,e1,expr(o2),expr(o3),expr(o4),e5,e6)
end
function sprand(o1::Any,e2::Expr,o3::Any,o4::Any,e5::Expr,e6::Expr)
    Expr(:call,:sprand,expr(o1),e2,expr(o3),expr(o4),e5,e6)
end
function sprand(e1::Expr,e2::Expr,o3::Any,o4::Any,e5::Expr,e6::Expr)
    Expr(:call,:sprand,e1,e2,expr(o3),expr(o4),e5,e6)
end
function sprand(o1::Any,o2::Any,e3::Expr,o4::Any,e5::Expr,e6::Expr)
    Expr(:call,:sprand,expr(o1),expr(o2),e3,expr(o4),e5,e6)
end
function sprand(e1::Expr,o2::Any,e3::Expr,o4::Any,e5::Expr,e6::Expr)
    Expr(:call,:sprand,e1,expr(o2),e3,expr(o4),e5,e6)
end
function sprand(o1::Any,e2::Expr,e3::Expr,o4::Any,e5::Expr,e6::Expr)
    Expr(:call,:sprand,expr(o1),e2,e3,expr(o4),e5,e6)
end
function sprand(e1::Expr,e2::Expr,e3::Expr,o4::Any,e5::Expr,e6::Expr)
    Expr(:call,:sprand,e1,e2,e3,expr(o4),e5,e6)
end
function sprand(o1::Any,o2::Any,o3::Any,e4::Expr,e5::Expr,e6::Expr)
    Expr(:call,:sprand,expr(o1),expr(o2),expr(o3),e4,e5,e6)
end
function sprand(e1::Expr,o2::Any,o3::Any,e4::Expr,e5::Expr,e6::Expr)
    Expr(:call,:sprand,e1,expr(o2),expr(o3),e4,e5,e6)
end
function sprand(o1::Any,e2::Expr,o3::Any,e4::Expr,e5::Expr,e6::Expr)
    Expr(:call,:sprand,expr(o1),e2,expr(o3),e4,e5,e6)
end
function sprand(e1::Expr,e2::Expr,o3::Any,e4::Expr,e5::Expr,e6::Expr)
    Expr(:call,:sprand,e1,e2,expr(o3),e4,e5,e6)
end
function sprand(o1::Any,o2::Any,e3::Expr,e4::Expr,e5::Expr,e6::Expr)
    Expr(:call,:sprand,expr(o1),expr(o2),e3,e4,e5,e6)
end
function sprand(e1::Expr,o2::Any,e3::Expr,e4::Expr,e5::Expr,e6::Expr)
    Expr(:call,:sprand,e1,expr(o2),e3,e4,e5,e6)
end
function sprand(o1::Any,e2::Expr,e3::Expr,e4::Expr,e5::Expr,e6::Expr)
    Expr(:call,:sprand,expr(o1),e2,e3,e4,e5,e6)
end
function sprand(e1::Expr,e2::Expr,e3::Expr,e4::Expr,e5::Expr,e6::Expr)
    Expr(:call,:sprand,e1,e2,e3,e4,e5,e6)
end
function sprandbool(e1::Expr,o2::Any,o3::Any,o4::Any)
    Expr(:call,:sprandbool,e1,expr(o2),expr(o3),expr(o4))
end
function sprandbool(o1::Any,e2::Expr,o3::Any,o4::Any)
    Expr(:call,:sprandbool,expr(o1),e2,expr(o3),expr(o4))
end
function sprandbool(e1::Expr,e2::Expr,o3::Any,o4::Any)
    Expr(:call,:sprandbool,e1,e2,expr(o3),expr(o4))
end
function sprandbool(o1::Any,o2::Any,e3::Expr,o4::Any)
    Expr(:call,:sprandbool,expr(o1),expr(o2),e3,expr(o4))
end
function sprandbool(e1::Expr,o2::Any,e3::Expr,o4::Any)
    Expr(:call,:sprandbool,e1,expr(o2),e3,expr(o4))
end
function sprandbool(o1::Any,e2::Expr,e3::Expr,o4::Any)
    Expr(:call,:sprandbool,expr(o1),e2,e3,expr(o4))
end
function sprandbool(e1::Expr,e2::Expr,e3::Expr,o4::Any)
    Expr(:call,:sprandbool,e1,e2,e3,expr(o4))
end
function sprandbool(o1::Any,o2::Any,o3::Any,e4::Expr)
    Expr(:call,:sprandbool,expr(o1),expr(o2),expr(o3),e4)
end
function sprandbool(e1::Expr,o2::Any,o3::Any,e4::Expr)
    Expr(:call,:sprandbool,e1,expr(o2),expr(o3),e4)
end
function sprandbool(o1::Any,e2::Expr,o3::Any,e4::Expr)
    Expr(:call,:sprandbool,expr(o1),e2,expr(o3),e4)
end
function sprandbool(e1::Expr,e2::Expr,o3::Any,e4::Expr)
    Expr(:call,:sprandbool,e1,e2,expr(o3),e4)
end
function sprandbool(o1::Any,o2::Any,e3::Expr,e4::Expr)
    Expr(:call,:sprandbool,expr(o1),expr(o2),e3,e4)
end
function sprandbool(e1::Expr,o2::Any,e3::Expr,e4::Expr)
    Expr(:call,:sprandbool,e1,expr(o2),e3,e4)
end
function sprandbool(o1::Any,e2::Expr,e3::Expr,e4::Expr)
    Expr(:call,:sprandbool,expr(o1),e2,e3,e4)
end
function sprandbool(e1::Expr,e2::Expr,e3::Expr,e4::Expr)
    Expr(:call,:sprandbool,e1,e2,e3,e4)
end
function sprandbool(e1::Expr,o2::Any)
    Expr(:call,:sprandbool,e1,expr(o2))
end
function sprandbool(o1::Any,e2::Expr)
    Expr(:call,:sprandbool,expr(o1),e2)
end
function sprandbool(e1::Expr,e2::Expr)
    Expr(:call,:sprandbool,e1,e2)
end
function sprandbool(e1::Expr,o2::Any,o3::Any)
    Expr(:call,:sprandbool,e1,expr(o2),expr(o3))
end
function sprandbool(o1::Any,e2::Expr,o3::Any)
    Expr(:call,:sprandbool,expr(o1),e2,expr(o3))
end
function sprandbool(e1::Expr,e2::Expr,o3::Any)
    Expr(:call,:sprandbool,e1,e2,expr(o3))
end
function sprandbool(o1::Any,o2::Any,e3::Expr)
    Expr(:call,:sprandbool,expr(o1),expr(o2),e3)
end
function sprandbool(e1::Expr,o2::Any,e3::Expr)
    Expr(:call,:sprandbool,e1,expr(o2),e3)
end
function sprandbool(o1::Any,e2::Expr,e3::Expr)
    Expr(:call,:sprandbool,expr(o1),e2,e3)
end
function sprandbool(e1::Expr,e2::Expr,e3::Expr)
    Expr(:call,:sprandbool,e1,e2,e3)
end
function sprandn(e1::Expr,o2::Any,o3::Any,o4::Any)
    Expr(:call,:sprandn,e1,expr(o2),expr(o3),expr(o4))
end
function sprandn(o1::Any,e2::Expr,o3::Any,o4::Any)
    Expr(:call,:sprandn,expr(o1),e2,expr(o3),expr(o4))
end
function sprandn(e1::Expr,e2::Expr,o3::Any,o4::Any)
    Expr(:call,:sprandn,e1,e2,expr(o3),expr(o4))
end
function sprandn(o1::Any,o2::Any,e3::Expr,o4::Any)
    Expr(:call,:sprandn,expr(o1),expr(o2),e3,expr(o4))
end
function sprandn(e1::Expr,o2::Any,e3::Expr,o4::Any)
    Expr(:call,:sprandn,e1,expr(o2),e3,expr(o4))
end
function sprandn(o1::Any,e2::Expr,e3::Expr,o4::Any)
    Expr(:call,:sprandn,expr(o1),e2,e3,expr(o4))
end
function sprandn(e1::Expr,e2::Expr,e3::Expr,o4::Any)
    Expr(:call,:sprandn,e1,e2,e3,expr(o4))
end
function sprandn(o1::Any,o2::Any,o3::Any,e4::Expr)
    Expr(:call,:sprandn,expr(o1),expr(o2),expr(o3),e4)
end
function sprandn(e1::Expr,o2::Any,o3::Any,e4::Expr)
    Expr(:call,:sprandn,e1,expr(o2),expr(o3),e4)
end
function sprandn(o1::Any,e2::Expr,o3::Any,e4::Expr)
    Expr(:call,:sprandn,expr(o1),e2,expr(o3),e4)
end
function sprandn(e1::Expr,e2::Expr,o3::Any,e4::Expr)
    Expr(:call,:sprandn,e1,e2,expr(o3),e4)
end
function sprandn(o1::Any,o2::Any,e3::Expr,e4::Expr)
    Expr(:call,:sprandn,expr(o1),expr(o2),e3,e4)
end
function sprandn(e1::Expr,o2::Any,e3::Expr,e4::Expr)
    Expr(:call,:sprandn,e1,expr(o2),e3,e4)
end
function sprandn(o1::Any,e2::Expr,e3::Expr,e4::Expr)
    Expr(:call,:sprandn,expr(o1),e2,e3,e4)
end
function sprandn(e1::Expr,e2::Expr,e3::Expr,e4::Expr)
    Expr(:call,:sprandn,e1,e2,e3,e4)
end
function sprandn(e1::Expr,o2::Any)
    Expr(:call,:sprandn,e1,expr(o2))
end
function sprandn(o1::Any,e2::Expr)
    Expr(:call,:sprandn,expr(o1),e2)
end
function sprandn(e1::Expr,e2::Expr)
    Expr(:call,:sprandn,e1,e2)
end
function sprandn(e1::Expr,o2::Any,o3::Any)
    Expr(:call,:sprandn,e1,expr(o2),expr(o3))
end
function sprandn(o1::Any,e2::Expr,o3::Any)
    Expr(:call,:sprandn,expr(o1),e2,expr(o3))
end
function sprandn(e1::Expr,e2::Expr,o3::Any)
    Expr(:call,:sprandn,e1,e2,expr(o3))
end
function sprandn(o1::Any,o2::Any,e3::Expr)
    Expr(:call,:sprandn,expr(o1),expr(o2),e3)
end
function sprandn(e1::Expr,o2::Any,e3::Expr)
    Expr(:call,:sprandn,e1,expr(o2),e3)
end
function sprandn(o1::Any,e2::Expr,e3::Expr)
    Expr(:call,:sprandn,expr(o1),e2,e3)
end
function sprandn(e1::Expr,e2::Expr,e3::Expr)
    Expr(:call,:sprandn,e1,e2,e3)
end
function sprint(e1::Expr,o2::Any)
    Expr(:call,:sprint,e1,expr(o2))
end
function sprint(o1::Any,e2::Expr)
    Expr(:call,:sprint,expr(o1),e2)
end
function sprint(e1::Expr,e2::Expr)
    Expr(:call,:sprint,e1,e2)
end
function sprint(e1::Expr,o2::Any,o3::Any)
    Expr(:call,:sprint,e1,expr(o2),expr(o3))
end
function sprint(o1::Any,e2::Expr,o3::Any)
    Expr(:call,:sprint,expr(o1),e2,expr(o3))
end
function sprint(e1::Expr,e2::Expr,o3::Any)
    Expr(:call,:sprint,e1,e2,expr(o3))
end
function sprint(o1::Any,o2::Any,e3::Expr)
    Expr(:call,:sprint,expr(o1),expr(o2),e3)
end
function sprint(e1::Expr,o2::Any,e3::Expr)
    Expr(:call,:sprint,e1,expr(o2),e3)
end
function sprint(o1::Any,e2::Expr,e3::Expr)
    Expr(:call,:sprint,expr(o1),e2,e3)
end
function sprint(e1::Expr,e2::Expr,e3::Expr)
    Expr(:call,:sprint,e1,e2,e3)
end
function spzeros(e1::Expr,o2::Any,o3::Any,o4::Any)
    Expr(:call,:spzeros,e1,expr(o2),expr(o3),expr(o4))
end
function spzeros(o1::Any,e2::Expr,o3::Any,o4::Any)
    Expr(:call,:spzeros,expr(o1),e2,expr(o3),expr(o4))
end
function spzeros(e1::Expr,e2::Expr,o3::Any,o4::Any)
    Expr(:call,:spzeros,e1,e2,expr(o3),expr(o4))
end
function spzeros(o1::Any,o2::Any,e3::Expr,o4::Any)
    Expr(:call,:spzeros,expr(o1),expr(o2),e3,expr(o4))
end
function spzeros(e1::Expr,o2::Any,e3::Expr,o4::Any)
    Expr(:call,:spzeros,e1,expr(o2),e3,expr(o4))
end
function spzeros(o1::Any,e2::Expr,e3::Expr,o4::Any)
    Expr(:call,:spzeros,expr(o1),e2,e3,expr(o4))
end
function spzeros(e1::Expr,e2::Expr,e3::Expr,o4::Any)
    Expr(:call,:spzeros,e1,e2,e3,expr(o4))
end
function spzeros(o1::Any,o2::Any,o3::Any,e4::Expr)
    Expr(:call,:spzeros,expr(o1),expr(o2),expr(o3),e4)
end
function spzeros(e1::Expr,o2::Any,o3::Any,e4::Expr)
    Expr(:call,:spzeros,e1,expr(o2),expr(o3),e4)
end
function spzeros(o1::Any,e2::Expr,o3::Any,e4::Expr)
    Expr(:call,:spzeros,expr(o1),e2,expr(o3),e4)
end
function spzeros(e1::Expr,e2::Expr,o3::Any,e4::Expr)
    Expr(:call,:spzeros,e1,e2,expr(o3),e4)
end
function spzeros(o1::Any,o2::Any,e3::Expr,e4::Expr)
    Expr(:call,:spzeros,expr(o1),expr(o2),e3,e4)
end
function spzeros(e1::Expr,o2::Any,e3::Expr,e4::Expr)
    Expr(:call,:spzeros,e1,expr(o2),e3,e4)
end
function spzeros(o1::Any,e2::Expr,e3::Expr,e4::Expr)
    Expr(:call,:spzeros,expr(o1),e2,e3,e4)
end
function spzeros(e1::Expr,e2::Expr,e3::Expr,e4::Expr)
    Expr(:call,:spzeros,e1,e2,e3,e4)
end
function spzeros(e1::Expr,o2::Any)
    Expr(:call,:spzeros,e1,expr(o2))
end
function spzeros(o1::Any,e2::Expr)
    Expr(:call,:spzeros,expr(o1),e2)
end
function spzeros(e1::Expr,e2::Expr)
    Expr(:call,:spzeros,e1,e2)
end
function spzeros(e1::Expr,o2::Any,o3::Any)
    Expr(:call,:spzeros,e1,expr(o2),expr(o3))
end
function spzeros(o1::Any,e2::Expr,o3::Any)
    Expr(:call,:spzeros,expr(o1),e2,expr(o3))
end
function spzeros(e1::Expr,e2::Expr,o3::Any)
    Expr(:call,:spzeros,e1,e2,expr(o3))
end
function spzeros(o1::Any,o2::Any,e3::Expr)
    Expr(:call,:spzeros,expr(o1),expr(o2),e3)
end
function spzeros(e1::Expr,o2::Any,e3::Expr)
    Expr(:call,:spzeros,e1,expr(o2),e3)
end
function spzeros(o1::Any,e2::Expr,e3::Expr)
    Expr(:call,:spzeros,expr(o1),e2,e3)
end
function spzeros(e1::Expr,e2::Expr,e3::Expr)
    Expr(:call,:spzeros,e1,e2,e3)
end
function spzeros(e1::Expr)
    Expr(:call,:spzeros,e1)
end
function sqrt(e1::Expr)
    Expr(:call,:sqrt,e1)
end
function sqrtm(e1::Expr)
    Expr(:call,:sqrtm,e1)
end
function squeeze(e1::Expr,o2::Any)
    Expr(:call,:squeeze,e1,expr(o2))
end
function squeeze(o1::Any,e2::Expr)
    Expr(:call,:squeeze,expr(o1),e2)
end
function squeeze(e1::Expr,e2::Expr)
    Expr(:call,:squeeze,e1,e2)
end
function srand(e1::Expr,o2::Any)
    Expr(:call,:srand,e1,expr(o2))
end
function srand(o1::Any,e2::Expr)
    Expr(:call,:srand,expr(o1),e2)
end
function srand(e1::Expr,e2::Expr)
    Expr(:call,:srand,e1,e2)
end
function srand(e1::Expr,o2::Any,o3::Any)
    Expr(:call,:srand,e1,expr(o2),expr(o3))
end
function srand(o1::Any,e2::Expr,o3::Any)
    Expr(:call,:srand,expr(o1),e2,expr(o3))
end
function srand(e1::Expr,e2::Expr,o3::Any)
    Expr(:call,:srand,e1,e2,expr(o3))
end
function srand(o1::Any,o2::Any,e3::Expr)
    Expr(:call,:srand,expr(o1),expr(o2),e3)
end
function srand(e1::Expr,o2::Any,e3::Expr)
    Expr(:call,:srand,e1,expr(o2),e3)
end
function srand(o1::Any,e2::Expr,e3::Expr)
    Expr(:call,:srand,expr(o1),e2,e3)
end
function srand(e1::Expr,e2::Expr,e3::Expr)
    Expr(:call,:srand,e1,e2,e3)
end
function srand(e1::Expr)
    Expr(:call,:srand,e1)
end
function stacktrace(e1::Expr,o2::Any)
    Expr(:call,:stacktrace,e1,expr(o2))
end
function stacktrace(o1::Any,e2::Expr)
    Expr(:call,:stacktrace,expr(o1),e2)
end
function stacktrace(e1::Expr,e2::Expr)
    Expr(:call,:stacktrace,e1,e2)
end
function stacktrace(e1::Expr)
    Expr(:call,:stacktrace,e1)
end
function start(e1::Expr,o2::Any)
    Expr(:call,:start,e1,expr(o2))
end
function start(o1::Any,e2::Expr)
    Expr(:call,:start,expr(o1),e2)
end
function start(e1::Expr,e2::Expr)
    Expr(:call,:start,e1,e2)
end
function start(e1::Expr)
    Expr(:call,:start,e1)
end
function startswith(e1::Expr,o2::Any)
    Expr(:call,:startswith,e1,expr(o2))
end
function startswith(o1::Any,e2::Expr)
    Expr(:call,:startswith,expr(o1),e2)
end
function startswith(e1::Expr,e2::Expr)
    Expr(:call,:startswith,e1,e2)
end
function std(e1::Expr,o2::Any)
    Expr(:call,:std,e1,expr(o2))
end
function std(e1::Expr,e2::Expr)
    Expr(:call,:std,e1,e2)
end
function stdm(o1::Any,e2::Expr)
    Expr(:call,:stdm,expr(o1),e2)
end
function stdm(e1::Expr,e2::Expr)
    Expr(:call,:stdm,e1,e2)
end
function step(e1::Expr)
    Expr(:call,:step,e1)
end
function stride(e1::Expr,o2::Any)
    Expr(:call,:stride,e1,expr(o2))
end
function stride(o1::Any,e2::Expr)
    Expr(:call,:stride,expr(o1),e2)
end
function stride(e1::Expr,e2::Expr)
    Expr(:call,:stride,e1,e2)
end
function strides(e1::Expr)
    Expr(:call,:strides,e1)
end
function stringmime(e1::Expr,o2::Any)
    Expr(:call,:stringmime,e1,expr(o2))
end
function stringmime(e1::Expr,e2::Expr)
    Expr(:call,:stringmime,e1,e2)
end
function strip(e1::Expr,o2::Any)
    Expr(:call,:strip,e1,expr(o2))
end
function strip(o1::Any,e2::Expr)
    Expr(:call,:strip,expr(o1),e2)
end
function strip(e1::Expr,e2::Expr)
    Expr(:call,:strip,e1,e2)
end
function strip(e1::Expr)
    Expr(:call,:strip,e1)
end
function strwidth(e1::Expr)
    Expr(:call,:strwidth,e1)
end
function sub2ind(e1::Expr,o2::Any)
    Expr(:call,:sub2ind,e1,expr(o2))
end
function sub2ind(o1::Any,e2::Expr)
    Expr(:call,:sub2ind,expr(o1),e2)
end
function sub2ind(e1::Expr,e2::Expr)
    Expr(:call,:sub2ind,e1,e2)
end
function sub2ind(e1::Expr,o2::Any,o3::Any)
    Expr(:call,:sub2ind,e1,expr(o2),expr(o3))
end
function sub2ind(o1::Any,e2::Expr,o3::Any)
    Expr(:call,:sub2ind,expr(o1),e2,expr(o3))
end
function sub2ind(e1::Expr,e2::Expr,o3::Any)
    Expr(:call,:sub2ind,e1,e2,expr(o3))
end
function sub2ind(o1::Any,o2::Any,e3::Expr)
    Expr(:call,:sub2ind,expr(o1),expr(o2),e3)
end
function sub2ind(e1::Expr,o2::Any,e3::Expr)
    Expr(:call,:sub2ind,e1,expr(o2),e3)
end
function sub2ind(o1::Any,e2::Expr,e3::Expr)
    Expr(:call,:sub2ind,expr(o1),e2,e3)
end
function sub2ind(e1::Expr,e2::Expr,e3::Expr)
    Expr(:call,:sub2ind,e1,e2,e3)
end
function sub2ind(e1::Expr)
    Expr(:call,:sub2ind,e1)
end
function subtypes(e1::Expr,o2::Any)
    Expr(:call,:subtypes,e1,expr(o2))
end
function subtypes(o1::Any,e2::Expr)
    Expr(:call,:subtypes,expr(o1),e2)
end
function subtypes(e1::Expr,e2::Expr)
    Expr(:call,:subtypes,e1,e2)
end
function subtypes(e1::Expr)
    Expr(:call,:subtypes,e1)
end
function success(e1::Expr)
    Expr(:call,:success,e1)
end
function sum(e1::Expr,o2::Any)
    Expr(:call,:sum,e1,expr(o2))
end
function sum(e1::Expr,e2::Expr)
    Expr(:call,:sum,e1,e2)
end
function sum(e1::Expr,o2::Any,o3::Any)
    Expr(:call,:sum,e1,expr(o2),expr(o3))
end
function sum(o1::Any,e2::Expr,o3::Any)
    Expr(:call,:sum,expr(o1),e2,expr(o3))
end
function sum(e1::Expr,e2::Expr,o3::Any)
    Expr(:call,:sum,e1,e2,expr(o3))
end
function sum(e1::Expr,e2::Expr,e3::Expr)
    Expr(:call,:sum,e1,e2,e3)
end
function sum!(e1::Expr,o2::Any)
    Expr(:call,:sum!,e1,expr(o2))
end
function sum!(o1::Any,e2::Expr)
    Expr(:call,:sum!,expr(o1),e2)
end
function sum!(e1::Expr,e2::Expr)
    Expr(:call,:sum!,e1,e2)
end
function sum!(e1::Expr,o2::Any,o3::Any)
    Expr(:call,:sum!,e1,expr(o2),expr(o3))
end
function sum!(o1::Any,e2::Expr,o3::Any)
    Expr(:call,:sum!,expr(o1),e2,expr(o3))
end
function sum!(e1::Expr,e2::Expr,o3::Any)
    Expr(:call,:sum!,e1,e2,expr(o3))
end
function sum!(o1::Any,o2::Any,e3::Expr)
    Expr(:call,:sum!,expr(o1),expr(o2),e3)
end
function sum!(e1::Expr,o2::Any,e3::Expr)
    Expr(:call,:sum!,e1,expr(o2),e3)
end
function sum!(o1::Any,e2::Expr,e3::Expr)
    Expr(:call,:sum!,expr(o1),e2,e3)
end
function sum!(e1::Expr,e2::Expr,e3::Expr)
    Expr(:call,:sum!,e1,e2,e3)
end
function sum_kbn(e1::Expr)
    Expr(:call,:sum_kbn,e1)
end
function sumabs(e1::Expr,o2::Any)
    Expr(:call,:sumabs,e1,expr(o2))
end
function sumabs(e1::Expr,e2::Expr)
    Expr(:call,:sumabs,e1,e2)
end
function sumabs!(e1::Expr,o2::Any)
    Expr(:call,:sumabs!,e1,expr(o2))
end
function sumabs!(o1::Any,e2::Expr)
    Expr(:call,:sumabs!,expr(o1),e2)
end
function sumabs!(e1::Expr,e2::Expr)
    Expr(:call,:sumabs!,e1,e2)
end
function sumabs2(e1::Expr,o2::Any)
    Expr(:call,:sumabs2,e1,expr(o2))
end
function sumabs2(e1::Expr,e2::Expr)
    Expr(:call,:sumabs2,e1,e2)
end
function sumabs2!(e1::Expr,o2::Any)
    Expr(:call,:sumabs2!,e1,expr(o2))
end
function sumabs2!(o1::Any,e2::Expr)
    Expr(:call,:sumabs2!,expr(o1),e2)
end
function sumabs2!(e1::Expr,e2::Expr)
    Expr(:call,:sumabs2!,e1,e2)
end
function super(e1::Expr)
    Expr(:call,:super,e1)
end
function supertype(e1::Expr)
    Expr(:call,:supertype,e1)
end
function svd(e1::Expr,o2::Any)
    Expr(:call,:svd,e1,expr(o2))
end
function svd(o1::Any,e2::Expr)
    Expr(:call,:svd,expr(o1),e2)
end
function svd(e1::Expr,e2::Expr)
    Expr(:call,:svd,e1,e2)
end
function svd(e1::Expr)
    Expr(:call,:svd,e1)
end
function svdfact(e1::Expr,o2::Any)
    Expr(:call,:svdfact,e1,expr(o2))
end
function svdfact(o1::Any,e2::Expr)
    Expr(:call,:svdfact,expr(o1),e2)
end
function svdfact(e1::Expr,e2::Expr)
    Expr(:call,:svdfact,e1,e2)
end
function svdfact(e1::Expr)
    Expr(:call,:svdfact,e1)
end
function svdfact!(e1::Expr,o2::Any)
    Expr(:call,:svdfact!,e1,expr(o2))
end
function svdfact!(o1::Any,e2::Expr)
    Expr(:call,:svdfact!,expr(o1),e2)
end
function svdfact!(e1::Expr,e2::Expr)
    Expr(:call,:svdfact!,e1,e2)
end
function svdfact!(e1::Expr)
    Expr(:call,:svdfact!,e1)
end
function svdvals(e1::Expr,o2::Any)
    Expr(:call,:svdvals,e1,expr(o2))
end
function svdvals(o1::Any,e2::Expr)
    Expr(:call,:svdvals,expr(o1),e2)
end
function svdvals(e1::Expr,e2::Expr)
    Expr(:call,:svdvals,e1,e2)
end
function svdvals(e1::Expr)
    Expr(:call,:svdvals,e1)
end
function svdvals!(e1::Expr,o2::Any)
    Expr(:call,:svdvals!,e1,expr(o2))
end
function svdvals!(o1::Any,e2::Expr)
    Expr(:call,:svdvals!,expr(o1),e2)
end
function svdvals!(e1::Expr,e2::Expr)
    Expr(:call,:svdvals!,e1,e2)
end
function svdvals!(e1::Expr)
    Expr(:call,:svdvals!,e1)
end
function sylvester(e1::Expr,o2::Any,o3::Any)
    Expr(:call,:sylvester,e1,expr(o2),expr(o3))
end
function sylvester(o1::Any,e2::Expr,o3::Any)
    Expr(:call,:sylvester,expr(o1),e2,expr(o3))
end
function sylvester(e1::Expr,e2::Expr,o3::Any)
    Expr(:call,:sylvester,e1,e2,expr(o3))
end
function sylvester(o1::Any,o2::Any,e3::Expr)
    Expr(:call,:sylvester,expr(o1),expr(o2),e3)
end
function sylvester(e1::Expr,o2::Any,e3::Expr)
    Expr(:call,:sylvester,e1,expr(o2),e3)
end
function sylvester(o1::Any,e2::Expr,e3::Expr)
    Expr(:call,:sylvester,expr(o1),e2,e3)
end
function sylvester(e1::Expr,e2::Expr,e3::Expr)
    Expr(:call,:sylvester,e1,e2,e3)
end
function symdiff!(e1::Expr,o2::Any)
    Expr(:call,:symdiff!,e1,expr(o2))
end
function symdiff!(e1::Expr,e2::Expr)
    Expr(:call,:symdiff!,e1,e2)
end
function symlink(e1::Expr,o2::Any)
    Expr(:call,:symlink,e1,expr(o2))
end
function symlink(o1::Any,e2::Expr)
    Expr(:call,:symlink,expr(o1),e2)
end
function symlink(e1::Expr,e2::Expr)
    Expr(:call,:symlink,e1,e2)
end
function symperm(e1::Expr,o2::Any)
    Expr(:call,:symperm,e1,expr(o2))
end
function symperm(o1::Any,e2::Expr)
    Expr(:call,:symperm,expr(o1),e2)
end
function symperm(e1::Expr,e2::Expr)
    Expr(:call,:symperm,e1,e2)
end
function systemerror(o1::Any,e2::Expr)
    Expr(:call,:systemerror,expr(o1),e2)
end
function systemerror(e1::Expr,e2::Expr)
    Expr(:call,:systemerror,e1,e2)
end
function take(o1::Any,e2::Expr)
    Expr(:call,:take,expr(o1),e2)
end
function take(e1::Expr,e2::Expr)
    Expr(:call,:take,e1,e2)
end
function take!(e1::Expr,o2::Any)
    Expr(:call,:take!,e1,expr(o2))
end
function take!(o1::Any,e2::Expr)
    Expr(:call,:take!,expr(o1),e2)
end
function take!(e1::Expr,e2::Expr)
    Expr(:call,:take!,e1,e2)
end
function take!(e1::Expr)
    Expr(:call,:take!,e1)
end
function takebuf_array(e1::Expr)
    Expr(:call,:takebuf_array,e1)
end
function takebuf_string(e1::Expr)
    Expr(:call,:takebuf_string,e1)
end
function tan(e1::Expr)
    Expr(:call,:tan,e1)
end
function tanh(e1::Expr)
    Expr(:call,:tanh,e1)
end
function task_local_storage(e1::Expr,o2::Any,o3::Any)
    Expr(:call,:task_local_storage,e1,expr(o2),expr(o3))
end
function task_local_storage(e1::Expr,e2::Expr,o3::Any)
    Expr(:call,:task_local_storage,e1,e2,expr(o3))
end
function task_local_storage(e1::Expr,o2::Any,e3::Expr)
    Expr(:call,:task_local_storage,e1,expr(o2),e3)
end
function task_local_storage(e1::Expr,e2::Expr,e3::Expr)
    Expr(:call,:task_local_storage,e1,e2,e3)
end
function tempname(e1::Expr,o2::Any)
    Expr(:call,:tempname,e1,expr(o2))
end
function tempname(o1::Any,e2::Expr)
    Expr(:call,:tempname,expr(o1),e2)
end
function tempname(e1::Expr,e2::Expr)
    Expr(:call,:tempname,e1,e2)
end
function tempname(e1::Expr)
    Expr(:call,:tempname,e1)
end
function time(e1::Expr)
    Expr(:call,:time,e1)
end
function timedwait(e1::Expr,o2::Any)
    Expr(:call,:timedwait,e1,expr(o2))
end
function timedwait(o1::Any,e2::Expr)
    Expr(:call,:timedwait,expr(o1),e2)
end
function timedwait(e1::Expr,e2::Expr)
    Expr(:call,:timedwait,e1,e2)
end
function touch(e1::Expr)
    Expr(:call,:touch,e1)
end
function trace(e1::Expr)
    Expr(:call,:trace,e1)
end
function trailing_ones(e1::Expr)
    Expr(:call,:trailing_ones,e1)
end
function trailing_zeros(e1::Expr)
    Expr(:call,:trailing_zeros,e1)
end
function trailingsize(e1::Expr)
    Expr(:call,:trailingsize,e1)
end
function transcode(o1::Any,e2::Expr)
    Expr(:call,:transcode,expr(o1),e2)
end
function transcode(e1::Expr,o2::Any)
    Expr(:call,:transcode,e1,expr(o2))
end
function transcode(e1::Expr,e2::Expr)
    Expr(:call,:transcode,e1,e2)
end
function transpose!(e1::Expr,o2::Any)
    Expr(:call,:transpose!,e1,expr(o2))
end
function transpose!(o1::Any,e2::Expr)
    Expr(:call,:transpose!,expr(o1),e2)
end
function transpose!(e1::Expr,e2::Expr)
    Expr(:call,:transpose!,e1,e2)
end
function transpose!(e1::Expr)
    Expr(:call,:transpose!,e1)
end
function trigamma(e1::Expr)
    Expr(:call,:trigamma,e1)
end
function tril(e1::Expr,o2::Any)
    Expr(:call,:tril,e1,expr(o2))
end
function tril(o1::Any,e2::Expr)
    Expr(:call,:tril,expr(o1),e2)
end
function tril(e1::Expr,e2::Expr)
    Expr(:call,:tril,e1,e2)
end
function tril(e1::Expr)
    Expr(:call,:tril,e1)
end
function tril!(e1::Expr,o2::Any)
    Expr(:call,:tril!,e1,expr(o2))
end
function tril!(o1::Any,e2::Expr)
    Expr(:call,:tril!,expr(o1),e2)
end
function tril!(e1::Expr,e2::Expr)
    Expr(:call,:tril!,e1,e2)
end
function tril!(e1::Expr,o2::Any,o3::Any)
    Expr(:call,:tril!,e1,expr(o2),expr(o3))
end
function tril!(o1::Any,e2::Expr,o3::Any)
    Expr(:call,:tril!,expr(o1),e2,expr(o3))
end
function tril!(e1::Expr,e2::Expr,o3::Any)
    Expr(:call,:tril!,e1,e2,expr(o3))
end
function tril!(o1::Any,o2::Any,e3::Expr)
    Expr(:call,:tril!,expr(o1),expr(o2),e3)
end
function tril!(e1::Expr,o2::Any,e3::Expr)
    Expr(:call,:tril!,e1,expr(o2),e3)
end
function tril!(o1::Any,e2::Expr,e3::Expr)
    Expr(:call,:tril!,expr(o1),e2,e3)
end
function tril!(e1::Expr,e2::Expr,e3::Expr)
    Expr(:call,:tril!,e1,e2,e3)
end
function tril!(e1::Expr)
    Expr(:call,:tril!,e1)
end
function triu(e1::Expr,o2::Any)
    Expr(:call,:triu,e1,expr(o2))
end
function triu(o1::Any,e2::Expr)
    Expr(:call,:triu,expr(o1),e2)
end
function triu(e1::Expr,e2::Expr)
    Expr(:call,:triu,e1,e2)
end
function triu(e1::Expr)
    Expr(:call,:triu,e1)
end
function triu!(e1::Expr,o2::Any)
    Expr(:call,:triu!,e1,expr(o2))
end
function triu!(o1::Any,e2::Expr)
    Expr(:call,:triu!,expr(o1),e2)
end
function triu!(e1::Expr,e2::Expr)
    Expr(:call,:triu!,e1,e2)
end
function triu!(e1::Expr,o2::Any,o3::Any)
    Expr(:call,:triu!,e1,expr(o2),expr(o3))
end
function triu!(o1::Any,e2::Expr,o3::Any)
    Expr(:call,:triu!,expr(o1),e2,expr(o3))
end
function triu!(e1::Expr,e2::Expr,o3::Any)
    Expr(:call,:triu!,e1,e2,expr(o3))
end
function triu!(o1::Any,o2::Any,e3::Expr)
    Expr(:call,:triu!,expr(o1),expr(o2),e3)
end
function triu!(e1::Expr,o2::Any,e3::Expr)
    Expr(:call,:triu!,e1,expr(o2),e3)
end
function triu!(o1::Any,e2::Expr,e3::Expr)
    Expr(:call,:triu!,expr(o1),e2,e3)
end
function triu!(e1::Expr,e2::Expr,e3::Expr)
    Expr(:call,:triu!,e1,e2,e3)
end
function triu!(e1::Expr)
    Expr(:call,:triu!,e1)
end
function trues(e1::Expr)
    Expr(:call,:trues,e1)
end
function trunc(e1::Expr,o2::Any)
    Expr(:call,:trunc,e1,expr(o2))
end
function trunc(o1::Any,e2::Expr)
    Expr(:call,:trunc,expr(o1),e2)
end
function trunc(e1::Expr,e2::Expr)
    Expr(:call,:trunc,e1,e2)
end
function trunc(e1::Expr,o2::Any,o3::Any)
    Expr(:call,:trunc,e1,expr(o2),expr(o3))
end
function trunc(o1::Any,e2::Expr,o3::Any)
    Expr(:call,:trunc,expr(o1),e2,expr(o3))
end
function trunc(e1::Expr,e2::Expr,o3::Any)
    Expr(:call,:trunc,e1,e2,expr(o3))
end
function trunc(o1::Any,o2::Any,e3::Expr)
    Expr(:call,:trunc,expr(o1),expr(o2),e3)
end
function trunc(e1::Expr,o2::Any,e3::Expr)
    Expr(:call,:trunc,e1,expr(o2),e3)
end
function trunc(o1::Any,e2::Expr,e3::Expr)
    Expr(:call,:trunc,expr(o1),e2,e3)
end
function trunc(e1::Expr,e2::Expr,e3::Expr)
    Expr(:call,:trunc,e1,e2,e3)
end
function trunc(e1::Expr)
    Expr(:call,:trunc,e1)
end
function truncate(e1::Expr,o2::Any)
    Expr(:call,:truncate,e1,expr(o2))
end
function truncate(o1::Any,e2::Expr)
    Expr(:call,:truncate,expr(o1),e2)
end
function truncate(e1::Expr,e2::Expr)
    Expr(:call,:truncate,e1,e2)
end
function trylock(e1::Expr)
    Expr(:call,:trylock,e1)
end
function tryparse(e1::Expr,o2::Any)
    Expr(:call,:tryparse,e1,expr(o2))
end
function tryparse(o1::Any,e2::Expr)
    Expr(:call,:tryparse,expr(o1),e2)
end
function tryparse(e1::Expr,e2::Expr)
    Expr(:call,:tryparse,e1,e2)
end
function tryparse(e1::Expr,o2::Any,o3::Any)
    Expr(:call,:tryparse,e1,expr(o2),expr(o3))
end
function tryparse(o1::Any,e2::Expr,o3::Any)
    Expr(:call,:tryparse,expr(o1),e2,expr(o3))
end
function tryparse(e1::Expr,e2::Expr,o3::Any)
    Expr(:call,:tryparse,e1,e2,expr(o3))
end
function tryparse(o1::Any,o2::Any,e3::Expr)
    Expr(:call,:tryparse,expr(o1),expr(o2),e3)
end
function tryparse(e1::Expr,o2::Any,e3::Expr)
    Expr(:call,:tryparse,e1,expr(o2),e3)
end
function tryparse(o1::Any,e2::Expr,e3::Expr)
    Expr(:call,:tryparse,expr(o1),e2,e3)
end
function tryparse(e1::Expr,e2::Expr,e3::Expr)
    Expr(:call,:tryparse,e1,e2,e3)
end
function typemax(e1::Expr)
    Expr(:call,:typemax,e1)
end
function typemin(e1::Expr)
    Expr(:call,:typemin,e1)
end
function ucfirst(e1::Expr)
    Expr(:call,:ucfirst,e1)
end
function unescape_string(o1::Any,e2::Expr)
    Expr(:call,:unescape_string,expr(o1),e2)
end
function unescape_string(e1::Expr,e2::Expr)
    Expr(:call,:unescape_string,e1,e2)
end
function unescape_string(e1::Expr)
    Expr(:call,:unescape_string,e1)
end
function union!(e1::Expr,o2::Any)
    Expr(:call,:union!,e1,expr(o2))
end
function union!(e1::Expr,e2::Expr)
    Expr(:call,:union!,e1,e2)
end
function union!(e1::Expr,o2::Any,o3::Any)
    Expr(:call,:union!,e1,expr(o2),expr(o3))
end
function union!(e1::Expr,e2::Expr,o3::Any)
    Expr(:call,:union!,e1,e2,expr(o3))
end
function union!(e1::Expr,o2::Any,e3::Expr)
    Expr(:call,:union!,e1,expr(o2),e3)
end
function union!(e1::Expr,e2::Expr,e3::Expr)
    Expr(:call,:union!,e1,e2,e3)
end
function unique(e1::Expr,o2::Any)
    Expr(:call,:unique,e1,expr(o2))
end
function unique(e1::Expr,e2::Expr)
    Expr(:call,:unique,e1,e2)
end
function unlock(e1::Expr)
    Expr(:call,:unlock,e1)
end
function unmark(e1::Expr)
    Expr(:call,:unmark,e1)
end
function unsafe_copy!(e1::Expr,o2::Any,o3::Any)
    Expr(:call,:unsafe_copy!,e1,expr(o2),expr(o3))
end
function unsafe_copy!(o1::Any,e2::Expr,o3::Any)
    Expr(:call,:unsafe_copy!,expr(o1),e2,expr(o3))
end
function unsafe_copy!(e1::Expr,e2::Expr,o3::Any)
    Expr(:call,:unsafe_copy!,e1,e2,expr(o3))
end
function unsafe_copy!(e1::Expr,e2::Expr,e3::Expr)
    Expr(:call,:unsafe_copy!,e1,e2,e3)
end
function unsafe_copy!(e1::Expr,o2::Any,o3::Any,o4::Any,o5::Any)
    Expr(:call,:unsafe_copy!,e1,expr(o2),expr(o3),expr(o4),expr(o5))
end
function unsafe_copy!(o1::Any,o2::Any,e3::Expr,o4::Any,o5::Any)
    Expr(:call,:unsafe_copy!,expr(o1),expr(o2),e3,expr(o4),expr(o5))
end
function unsafe_copy!(e1::Expr,o2::Any,e3::Expr,o4::Any,o5::Any)
    Expr(:call,:unsafe_copy!,e1,expr(o2),e3,expr(o4),expr(o5))
end
function unsafe_copy!(e1::Expr,o2::Any,e3::Expr,e4::Expr,o5::Any)
    Expr(:call,:unsafe_copy!,e1,expr(o2),e3,e4,expr(o5))
end
function unsafe_copy!(e1::Expr,e2::Expr,e3::Expr,o4::Any,o5::Any)
    Expr(:call,:unsafe_copy!,e1,e2,e3,expr(o4),expr(o5))
end
function unsafe_copy!(e1::Expr,e2::Expr,e3::Expr,e4::Expr,o5::Any)
    Expr(:call,:unsafe_copy!,e1,e2,e3,e4,expr(o5))
end
function unsafe_copy!(e1::Expr,o2::Any,e3::Expr,o4::Any,e5::Expr)
    Expr(:call,:unsafe_copy!,e1,expr(o2),e3,expr(o4),e5)
end
function unsafe_copy!(e1::Expr,o2::Any,e3::Expr,e4::Expr,e5::Expr)
    Expr(:call,:unsafe_copy!,e1,expr(o2),e3,e4,e5)
end
function unsafe_copy!(e1::Expr,e2::Expr,e3::Expr,o4::Any,e5::Expr)
    Expr(:call,:unsafe_copy!,e1,e2,e3,expr(o4),e5)
end
function unsafe_copy!(e1::Expr,e2::Expr,e3::Expr,e4::Expr,e5::Expr)
    Expr(:call,:unsafe_copy!,e1,e2,e3,e4,e5)
end
function unsafe_load(e1::Expr,o2::Any)
    Expr(:call,:unsafe_load,e1,expr(o2))
end
function unsafe_load(o1::Any,e2::Expr)
    Expr(:call,:unsafe_load,expr(o1),e2)
end
function unsafe_load(e1::Expr,e2::Expr)
    Expr(:call,:unsafe_load,e1,e2)
end
function unsafe_load(e1::Expr)
    Expr(:call,:unsafe_load,e1)
end
function unsafe_pointer_to_objref(e1::Expr)
    Expr(:call,:unsafe_pointer_to_objref,e1)
end
function unsafe_read(e1::Expr,o2::Any,o3::Any)
    Expr(:call,:unsafe_read,e1,expr(o2),expr(o3))
end
function unsafe_read(o1::Any,e2::Expr,o3::Any)
    Expr(:call,:unsafe_read,expr(o1),e2,expr(o3))
end
function unsafe_read(e1::Expr,e2::Expr,o3::Any)
    Expr(:call,:unsafe_read,e1,e2,expr(o3))
end
function unsafe_read(o1::Any,o2::Any,e3::Expr)
    Expr(:call,:unsafe_read,expr(o1),expr(o2),e3)
end
function unsafe_read(e1::Expr,o2::Any,e3::Expr)
    Expr(:call,:unsafe_read,e1,expr(o2),e3)
end
function unsafe_read(o1::Any,e2::Expr,e3::Expr)
    Expr(:call,:unsafe_read,expr(o1),e2,e3)
end
function unsafe_read(e1::Expr,e2::Expr,e3::Expr)
    Expr(:call,:unsafe_read,e1,e2,e3)
end
function unsafe_store!(e1::Expr,o2::Any)
    Expr(:call,:unsafe_store!,e1,expr(o2))
end
function unsafe_store!(e1::Expr,e2::Expr)
    Expr(:call,:unsafe_store!,e1,e2)
end
function unsafe_store!(e1::Expr,o2::Any,o3::Any)
    Expr(:call,:unsafe_store!,e1,expr(o2),expr(o3))
end
function unsafe_store!(o1::Any,o2::Any,e3::Expr)
    Expr(:call,:unsafe_store!,expr(o1),expr(o2),e3)
end
function unsafe_store!(e1::Expr,o2::Any,e3::Expr)
    Expr(:call,:unsafe_store!,e1,expr(o2),e3)
end
function unsafe_store!(e1::Expr,e2::Expr,e3::Expr)
    Expr(:call,:unsafe_store!,e1,e2,e3)
end
function unsafe_string(e1::Expr,o2::Any)
    Expr(:call,:unsafe_string,e1,expr(o2))
end
function unsafe_string(o1::Any,e2::Expr)
    Expr(:call,:unsafe_string,expr(o1),e2)
end
function unsafe_string(e1::Expr,e2::Expr)
    Expr(:call,:unsafe_string,e1,e2)
end
function unsafe_string(e1::Expr)
    Expr(:call,:unsafe_string,e1)
end
function unsafe_trunc(e1::Expr,o2::Any)
    Expr(:call,:unsafe_trunc,e1,expr(o2))
end
function unsafe_trunc(o1::Any,e2::Expr)
    Expr(:call,:unsafe_trunc,expr(o1),e2)
end
function unsafe_trunc(e1::Expr,e2::Expr)
    Expr(:call,:unsafe_trunc,e1,e2)
end
function unsafe_wrap(e1::Expr,o2::Any,o3::Any,o4::Any)
    Expr(:call,:unsafe_wrap,e1,expr(o2),expr(o3),expr(o4))
end
function unsafe_wrap(o1::Any,e2::Expr,o3::Any,o4::Any)
    Expr(:call,:unsafe_wrap,expr(o1),e2,expr(o3),expr(o4))
end
function unsafe_wrap(e1::Expr,e2::Expr,o3::Any,o4::Any)
    Expr(:call,:unsafe_wrap,e1,e2,expr(o3),expr(o4))
end
function unsafe_wrap(o1::Any,o2::Any,e3::Expr,o4::Any)
    Expr(:call,:unsafe_wrap,expr(o1),expr(o2),e3,expr(o4))
end
function unsafe_wrap(e1::Expr,o2::Any,e3::Expr,o4::Any)
    Expr(:call,:unsafe_wrap,e1,expr(o2),e3,expr(o4))
end
function unsafe_wrap(o1::Any,e2::Expr,e3::Expr,o4::Any)
    Expr(:call,:unsafe_wrap,expr(o1),e2,e3,expr(o4))
end
function unsafe_wrap(e1::Expr,e2::Expr,e3::Expr,o4::Any)
    Expr(:call,:unsafe_wrap,e1,e2,e3,expr(o4))
end
function unsafe_wrap(o1::Any,o2::Any,o3::Any,e4::Expr)
    Expr(:call,:unsafe_wrap,expr(o1),expr(o2),expr(o3),e4)
end
function unsafe_wrap(e1::Expr,o2::Any,o3::Any,e4::Expr)
    Expr(:call,:unsafe_wrap,e1,expr(o2),expr(o3),e4)
end
function unsafe_wrap(o1::Any,e2::Expr,o3::Any,e4::Expr)
    Expr(:call,:unsafe_wrap,expr(o1),e2,expr(o3),e4)
end
function unsafe_wrap(e1::Expr,e2::Expr,o3::Any,e4::Expr)
    Expr(:call,:unsafe_wrap,e1,e2,expr(o3),e4)
end
function unsafe_wrap(o1::Any,o2::Any,e3::Expr,e4::Expr)
    Expr(:call,:unsafe_wrap,expr(o1),expr(o2),e3,e4)
end
function unsafe_wrap(e1::Expr,o2::Any,e3::Expr,e4::Expr)
    Expr(:call,:unsafe_wrap,e1,expr(o2),e3,e4)
end
function unsafe_wrap(o1::Any,e2::Expr,e3::Expr,e4::Expr)
    Expr(:call,:unsafe_wrap,expr(o1),e2,e3,e4)
end
function unsafe_wrap(e1::Expr,e2::Expr,e3::Expr,e4::Expr)
    Expr(:call,:unsafe_wrap,e1,e2,e3,e4)
end
function unsafe_wrap(e1::Expr,o2::Any)
    Expr(:call,:unsafe_wrap,e1,expr(o2))
end
function unsafe_wrap(o1::Any,e2::Expr)
    Expr(:call,:unsafe_wrap,expr(o1),e2)
end
function unsafe_wrap(e1::Expr,e2::Expr)
    Expr(:call,:unsafe_wrap,e1,e2)
end
function unsafe_wrap(e1::Expr,o2::Any,o3::Any)
    Expr(:call,:unsafe_wrap,e1,expr(o2),expr(o3))
end
function unsafe_wrap(o1::Any,e2::Expr,o3::Any)
    Expr(:call,:unsafe_wrap,expr(o1),e2,expr(o3))
end
function unsafe_wrap(e1::Expr,e2::Expr,o3::Any)
    Expr(:call,:unsafe_wrap,e1,e2,expr(o3))
end
function unsafe_wrap(o1::Any,o2::Any,e3::Expr)
    Expr(:call,:unsafe_wrap,expr(o1),expr(o2),e3)
end
function unsafe_wrap(e1::Expr,o2::Any,e3::Expr)
    Expr(:call,:unsafe_wrap,e1,expr(o2),e3)
end
function unsafe_wrap(o1::Any,e2::Expr,e3::Expr)
    Expr(:call,:unsafe_wrap,expr(o1),e2,e3)
end
function unsafe_wrap(e1::Expr,e2::Expr,e3::Expr)
    Expr(:call,:unsafe_wrap,e1,e2,e3)
end
function unsafe_write(e1::Expr,o2::Any,o3::Any,o4::Any)
    Expr(:call,:unsafe_write,e1,expr(o2),expr(o3),expr(o4))
end
function unsafe_write(o1::Any,e2::Expr,o3::Any,o4::Any)
    Expr(:call,:unsafe_write,expr(o1),e2,expr(o3),expr(o4))
end
function unsafe_write(e1::Expr,e2::Expr,o3::Any,o4::Any)
    Expr(:call,:unsafe_write,e1,e2,expr(o3),expr(o4))
end
function unsafe_write(o1::Any,o2::Any,e3::Expr,o4::Any)
    Expr(:call,:unsafe_write,expr(o1),expr(o2),e3,expr(o4))
end
function unsafe_write(e1::Expr,o2::Any,e3::Expr,o4::Any)
    Expr(:call,:unsafe_write,e1,expr(o2),e3,expr(o4))
end
function unsafe_write(o1::Any,e2::Expr,e3::Expr,o4::Any)
    Expr(:call,:unsafe_write,expr(o1),e2,e3,expr(o4))
end
function unsafe_write(e1::Expr,e2::Expr,e3::Expr,o4::Any)
    Expr(:call,:unsafe_write,e1,e2,e3,expr(o4))
end
function unsafe_write(o1::Any,o2::Any,o3::Any,e4::Expr)
    Expr(:call,:unsafe_write,expr(o1),expr(o2),expr(o3),e4)
end
function unsafe_write(e1::Expr,o2::Any,o3::Any,e4::Expr)
    Expr(:call,:unsafe_write,e1,expr(o2),expr(o3),e4)
end
function unsafe_write(o1::Any,e2::Expr,o3::Any,e4::Expr)
    Expr(:call,:unsafe_write,expr(o1),e2,expr(o3),e4)
end
function unsafe_write(e1::Expr,e2::Expr,o3::Any,e4::Expr)
    Expr(:call,:unsafe_write,e1,e2,expr(o3),e4)
end
function unsafe_write(o1::Any,o2::Any,e3::Expr,e4::Expr)
    Expr(:call,:unsafe_write,expr(o1),expr(o2),e3,e4)
end
function unsafe_write(e1::Expr,o2::Any,e3::Expr,e4::Expr)
    Expr(:call,:unsafe_write,e1,expr(o2),e3,e4)
end
function unsafe_write(o1::Any,e2::Expr,e3::Expr,e4::Expr)
    Expr(:call,:unsafe_write,expr(o1),e2,e3,e4)
end
function unsafe_write(e1::Expr,e2::Expr,e3::Expr,e4::Expr)
    Expr(:call,:unsafe_write,e1,e2,e3,e4)
end
function unsafe_write(e1::Expr,o2::Any,o3::Any)
    Expr(:call,:unsafe_write,e1,expr(o2),expr(o3))
end
function unsafe_write(o1::Any,e2::Expr,o3::Any)
    Expr(:call,:unsafe_write,expr(o1),e2,expr(o3))
end
function unsafe_write(e1::Expr,e2::Expr,o3::Any)
    Expr(:call,:unsafe_write,e1,e2,expr(o3))
end
function unsafe_write(o1::Any,o2::Any,e3::Expr)
    Expr(:call,:unsafe_write,expr(o1),expr(o2),e3)
end
function unsafe_write(e1::Expr,o2::Any,e3::Expr)
    Expr(:call,:unsafe_write,e1,expr(o2),e3)
end
function unsafe_write(o1::Any,e2::Expr,e3::Expr)
    Expr(:call,:unsafe_write,expr(o1),e2,e3)
end
function unsafe_write(e1::Expr,e2::Expr,e3::Expr)
    Expr(:call,:unsafe_write,e1,e2,e3)
end
function unshift!(e1::Expr,o2::Any)
    Expr(:call,:unshift!,e1,expr(o2))
end
function unshift!(e1::Expr,e2::Expr)
    Expr(:call,:unshift!,e1,e2)
end
function uppercase(e1::Expr)
    Expr(:call,:uppercase,e1)
end
function utf8(e1::Expr,o2::Any)
    Expr(:call,:utf8,e1,expr(o2))
end
function utf8(o1::Any,e2::Expr)
    Expr(:call,:utf8,expr(o1),e2)
end
function utf8(e1::Expr,e2::Expr)
    Expr(:call,:utf8,e1,e2)
end
function valtype(e1::Expr)
    Expr(:call,:valtype,e1)
end
function values(e1::Expr,o2::Any)
    Expr(:call,:values,e1,expr(o2))
end
function values(o1::Any,e2::Expr)
    Expr(:call,:values,expr(o1),e2)
end
function values(e1::Expr,e2::Expr)
    Expr(:call,:values,e1,e2)
end
function values(e1::Expr)
    Expr(:call,:values,e1)
end
function var(e1::Expr,o2::Any)
    Expr(:call,:var,e1,expr(o2))
end
function var(e1::Expr,e2::Expr)
    Expr(:call,:var,e1,e2)
end
function varm(o1::Any,e2::Expr)
    Expr(:call,:varm,expr(o1),e2)
end
function varm(e1::Expr,e2::Expr)
    Expr(:call,:varm,e1,e2)
end
function varm(e1::Expr,o2::Any,o3::Any)
    Expr(:call,:varm,e1,expr(o2),expr(o3))
end
function varm(o1::Any,e2::Expr,o3::Any)
    Expr(:call,:varm,expr(o1),e2,expr(o3))
end
function varm(e1::Expr,e2::Expr,o3::Any)
    Expr(:call,:varm,e1,e2,expr(o3))
end
function varm(e1::Expr,e2::Expr,e3::Expr)
    Expr(:call,:varm,e1,e2,e3)
end
function vec(e1::Expr)
    Expr(:call,:vec,e1)
end
function vecnorm(o1::Any,e2::Expr)
    Expr(:call,:vecnorm,expr(o1),e2)
end
function vecnorm(e1::Expr,e2::Expr)
    Expr(:call,:vecnorm,e1,e2)
end
function versioninfo(e1::Expr,o2::Any)
    Expr(:call,:versioninfo,e1,expr(o2))
end
function versioninfo(o1::Any,e2::Expr)
    Expr(:call,:versioninfo,expr(o1),e2)
end
function versioninfo(e1::Expr,e2::Expr)
    Expr(:call,:versioninfo,e1,e2)
end
function versioninfo(e1::Expr)
    Expr(:call,:versioninfo,e1)
end
function view(e1::Expr,o2::Any)
    Expr(:call,:view,e1,expr(o2))
end
function view(o1::Any,e2::Expr)
    Expr(:call,:view,expr(o1),e2)
end
function view(e1::Expr,e2::Expr)
    Expr(:call,:view,e1,e2)
end
function wait(e1::Expr,o2::Any)
    Expr(:call,:wait,e1,expr(o2))
end
function wait(o1::Any,e2::Expr)
    Expr(:call,:wait,expr(o1),e2)
end
function wait(e1::Expr,e2::Expr)
    Expr(:call,:wait,e1,e2)
end
function wait(e1::Expr)
    Expr(:call,:wait,e1)
end
function watch_file(e1::Expr,o2::Any)
    Expr(:call,:watch_file,e1,expr(o2))
end
function watch_file(o1::Any,e2::Expr)
    Expr(:call,:watch_file,expr(o1),e2)
end
function watch_file(e1::Expr,e2::Expr)
    Expr(:call,:watch_file,e1,e2)
end
function watch_file(e1::Expr)
    Expr(:call,:watch_file,e1)
end
function which(e1::Expr)
    Expr(:call,:which,e1)
end
function whos(e1::Expr,o2::Any)
    Expr(:call,:whos,e1,expr(o2))
end
function whos(o1::Any,e2::Expr)
    Expr(:call,:whos,expr(o1),e2)
end
function whos(e1::Expr,e2::Expr)
    Expr(:call,:whos,e1,e2)
end
function whos(e1::Expr,o2::Any,o3::Any)
    Expr(:call,:whos,e1,expr(o2),expr(o3))
end
function whos(o1::Any,e2::Expr,o3::Any)
    Expr(:call,:whos,expr(o1),e2,expr(o3))
end
function whos(e1::Expr,e2::Expr,o3::Any)
    Expr(:call,:whos,e1,e2,expr(o3))
end
function whos(o1::Any,o2::Any,e3::Expr)
    Expr(:call,:whos,expr(o1),expr(o2),e3)
end
function whos(e1::Expr,o2::Any,e3::Expr)
    Expr(:call,:whos,e1,expr(o2),e3)
end
function whos(o1::Any,e2::Expr,e3::Expr)
    Expr(:call,:whos,expr(o1),e2,e3)
end
function whos(e1::Expr,e2::Expr,e3::Expr)
    Expr(:call,:whos,e1,e2,e3)
end
function whos(e1::Expr)
    Expr(:call,:whos,e1)
end
function widemul(e1::Expr,o2::Any)
    Expr(:call,:widemul,e1,expr(o2))
end
function widemul(o1::Any,e2::Expr)
    Expr(:call,:widemul,expr(o1),e2)
end
function widemul(e1::Expr,e2::Expr)
    Expr(:call,:widemul,e1,e2)
end
function widen(e1::Expr)
    Expr(:call,:widen,e1)
end
function withenv(e1::Expr,o2::Any)
    Expr(:call,:withenv,e1,expr(o2))
end
function withenv(o1::Any,e2::Expr)
    Expr(:call,:withenv,expr(o1),e2)
end
function withenv(e1::Expr,e2::Expr)
    Expr(:call,:withenv,e1,e2)
end
function withenv(e1::Expr)
    Expr(:call,:withenv,e1)
end
function workers(e1::Expr)
    Expr(:call,:workers,e1)
end
function write(e1::Expr,o2::Any)
    Expr(:call,:write,e1,expr(o2))
end
function write(e1::Expr,e2::Expr)
    Expr(:call,:write,e1,e2)
end
function write(e1::Expr,o2::Any,o3::Any)
    Expr(:call,:write,e1,expr(o2),expr(o3))
end
function write(o1::Any,e2::Expr,o3::Any)
    Expr(:call,:write,expr(o1),e2,expr(o3))
end
function write(e1::Expr,e2::Expr,o3::Any)
    Expr(:call,:write,e1,e2,expr(o3))
end
function write(o1::Any,o2::Any,e3::Expr)
    Expr(:call,:write,expr(o1),expr(o2),e3)
end
function write(e1::Expr,o2::Any,e3::Expr)
    Expr(:call,:write,e1,expr(o2),e3)
end
function write(o1::Any,e2::Expr,e3::Expr)
    Expr(:call,:write,expr(o1),e2,e3)
end
function write(e1::Expr,e2::Expr,e3::Expr)
    Expr(:call,:write,e1,e2,e3)
end
function writedlm(e1::Expr,o2::Any,o3::Any)
    Expr(:call,:writedlm,e1,expr(o2),expr(o3))
end
function writedlm(e1::Expr,e2::Expr,o3::Any)
    Expr(:call,:writedlm,e1,e2,expr(o3))
end
function writedlm(e1::Expr,o2::Any,e3::Expr)
    Expr(:call,:writedlm,e1,expr(o2),e3)
end
function writedlm(e1::Expr,e2::Expr,e3::Expr)
    Expr(:call,:writedlm,e1,e2,e3)
end
function yieldto(e1::Expr,o2::Any)
    Expr(:call,:yieldto,e1,expr(o2))
end
function yieldto(e1::Expr,e2::Expr)
    Expr(:call,:yieldto,e1,e2)
end
function yieldto(e1::Expr)
    Expr(:call,:yieldto,e1)
end
function zero(e1::Expr)
    Expr(:call,:zero,e1)
end
function zeta(e1::Expr,o2::Any)
    Expr(:call,:zeta,e1,expr(o2))
end
function zeta(o1::Any,e2::Expr)
    Expr(:call,:zeta,expr(o1),e2)
end
function zeta(e1::Expr,e2::Expr)
    Expr(:call,:zeta,e1,e2)
end
function zeta(e1::Expr)
    Expr(:call,:zeta,e1)
end
function |(e1::Expr,o2::Any)
    Expr(:call,:|,e1,expr(o2))
end
function |(o1::Any,e2::Expr)
    Expr(:call,:|,expr(o1),e2)
end
function |(e1::Expr,e2::Expr)
    Expr(:call,:|,e1,e2)
end
function |(e1::Expr)
    Expr(:call,:|,e1)
end
function ~(e1::Expr)
    Expr(:call,:~,e1)
end
function ⊈(e1::Expr,o2::Any)
    Expr(:call,:⊈,e1,expr(o2))
end
function ⊈(o1::Any,e2::Expr)
    Expr(:call,:⊈,expr(o1),e2)
end
function ⊈(e1::Expr,e2::Expr)
    Expr(:call,:⊈,e1,e2)
end
function ⊊(e1::Expr,o2::Any)
    Expr(:call,:⊊,e1,expr(o2))
end
function ⊊(o1::Any,e2::Expr)
    Expr(:call,:⊊,expr(o1),e2)
end
function ⊊(e1::Expr,e2::Expr)
    Expr(:call,:⊊,e1,e2)
end
