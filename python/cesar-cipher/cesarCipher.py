
# usando listas por comprension y definiendo corrimiento 
# usando lambda y map


def especial(c):
  if c == ' ':
    return c
  else:
    return ''


def cifrar(op,d,s):
  if op == 'c':
    return '\"'+str().join(map(lambda x : especial(x) if x == ' ' or x=='\"' else chr((ord(x)-ord('a')+int(d))%26 + ord('a')) , s))+'\"' #con lambda
  elif op == 'd':
    return '\"'+str().join(map(lambda x : especial(x) if x == ' ' or x=='\"' else chr((ord(x)-ord('a')-int(d))%26 + ord('a')) , s))+'\"' #con lambda

