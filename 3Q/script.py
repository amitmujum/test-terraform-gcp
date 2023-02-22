object = {"x":{"y":{"z":"a"}}}
key = 'x/y/z'


def value_nested_object(obj, key):
    keys = key.split('/')
    value = obj
    for k in keys:
        value = value[k]
    return value
    
value = value_nested_object(object, key)
print(value)
