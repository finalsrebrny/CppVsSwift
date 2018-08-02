//
//  QuickSort.hpp
//  CppVsSwift
//
//  Created by Piotr Holub on 02.08.2018.
//  Copyright © 2018 Piotr Holub. All rights reserved.
//

#ifndef QuickSort_hpp
#define QuickSort_hpp

#include <stdio.h>

class QuickSort {
    public:
    QuickSort();
    int partition(int tablica[], int p, int r);
    void quicksort(int tablica[], int p, int r);
};
#endif /* QuickSort_hpp */
