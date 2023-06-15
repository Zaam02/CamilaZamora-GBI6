def enzima(secuencia, empalme):
    fragmentos = []
    sitiocorte = secuencia.find(empalme)
    
    while sitiocorte >= 0:
        frag1 = secuencia[:sitiocorte + len(empalme)]
        frag2 = secuencia[sitiocorte + len(empalme):]
        fragmentos.append([frag1, len(frag1)])
        fragmentos.append([frag2, len(frag2)])
        
        secuencia = frag2
        sitiocorte = secuencia.find(empalme)
    
    return fragmentos




