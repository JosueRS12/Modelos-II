
# string

# definiendo corrimiento y cifrad2
def corrimiento(a,d):
    if a == ' ':
        return a
    else:
        return chr((ord(a)-(ord('a'))+d) % 26 + ord('a'))

def cifrar(s,d):
    return str().join([(corrimiento(x,d)) for x in s]) 


# usando lambda y map
def cifrar2(s,d):
    return str().join(map(lambda x : x if x == ' ' else
                          chr((ord(x)-ord('a')+d)%26 + ord('a')) , s)) #con lambda


# mod 26
