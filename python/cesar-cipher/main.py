import cesarCipher as cp
from handle import obtener as op
#d 2 "jqnc cnglcpftq"
if __name__ == "__main__":
  s = input()
  #print(op('d 2 "jqnc cnglcpftq"',2))
  print(cp.cifrar(op(s,0),op(s,1),op(s,2)))

