type
  Hello[T] = object
    value: T

proc printHelloValue[T](hello: Hello[T]) =
  echo hello.value

proc main() =
  let a = Hello[float]()
  p#[!]#rintHelloValue(a)

main()

discard """
$nimsuggest --tester $file
>def $1
def;;skProc;;tgenerics.printHelloValue.printHelloValue;;proc (hello: Hello[system.float]){.gcsafe, raises: <inferred> [].};;$file;;5;;5;;"";;100
"""
