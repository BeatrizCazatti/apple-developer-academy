import Foundation

func pB(_ V: [Int], _ k: Int) -> Int {
    var c = 0
    var f = V.count - 1  // último índice do vetor
    
    while c <= f {
        let i = (c + f) / 2
        if V[i] == k {
            return i
        } else if V[i] > k {
            f = i - 1
        } else {
            c = i + 1
        }
    }
    return -1  // retorna -1 se não encontrar
}

let V = [1, 2, 3, 4, 5, 6]
let k = 1
let indice = pB(V, k)

if indice != -1 {
    print("A chave \(k) foi encontrada na posição \(indice)")
} else {
    print("O vetor não possui a chave \(k)")
}
