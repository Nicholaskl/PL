//Date Created: 13/10/2020

#include <iostream>
#include <bits/stdc++.h> 

#include "booksort.h"

int main() {
	Book books[5];

	books[0].SetBookID(3);
	books[0].SetBookName("Harry Potter");
	books[1].SetBookID(6);
	books[1].SetBookName("Percy Jackson");
	books[2].SetBookID(2);
	books[2].SetBookName("The Hobbit");
	books[3].SetBookID(5);
	books[3].SetBookName("Lord of the Rings");
	books[4].SetBookID(1);
	books[4].SetBookName("Othello");

	int IDs[sizeof(books)/sizeof(Book)];
	Book output[sizeof(books)/sizeof(Book)];


	for (int i = 0; i < sizeof(books)/sizeof(Book); i++)
	{
		IDs[i] = books[i].GetBookID();
	}
	
	quickSort(IDs, sizeof(IDs)/sizeof(int));

	for (int i = 0; i < sizeof(books)/sizeof(Book); i++)
	{
		for (int j = 0; j < sizeof(IDs)/sizeof(int); j++)
		{
			if(books[i].GetBookID() == IDs[j]) {
				output[j] = books[i];
			}
		}
	}

	for(int i=0; i < sizeof(output)/sizeof(Book); i++) {
		std::cout << output[i].GetBookID() << " ";
		std::cout << output[i].GetBookName();
		std::cout << std::endl;
	}

	//delete[] IDs;
	return 0;
}

int* quickSort(int* A, int length) {
	A = quickSortRecurse(A, 0, length - 1);
	return A;
}

int* quickSortRecurse(int* A, int leftIdx, int rightIdx) {
	int pivotIdx, newPivotIdx;

	if(rightIdx > leftIdx) {
		pivotIdx = leftIdx;
		newPivotIdx = doPartitioning(A, leftIdx, rightIdx, pivotIdx);

		quickSortRecurse(A, leftIdx, newPivotIdx -1);
		quickSortRecurse(A, newPivotIdx + 1, rightIdx);
	}

	return A;
}

int doPartitioning(int* A, int leftIdx, int rightIdx, int pivotIdx) {
	int newPivotIdx, pivotVal, currIdx, temp;

	pivotVal = A[pivotIdx];
	A[pivotIdx] = A[rightIdx];
	A[rightIdx] = pivotVal;

	currIdx = leftIdx;
	for(int ii = leftIdx; ii <= rightIdx - 1; ii++) {
		if(A[ii] < pivotVal) {
			temp = A[ii];
			A[ii] = A[currIdx];
			A[currIdx] = temp;
			currIdx++;
		}
	}
	newPivotIdx = currIdx;
	A[rightIdx] = A[newPivotIdx];
	A[newPivotIdx] = pivotVal;

	return newPivotIdx;
}

//Book constructor
Book::Book() {
	bookID = 0;
	bookName = "Othello";
	ISBN = "12345678";
}

void Book::SetBookID(int iID) {
	bookID = iID;
}

void Book::SetBookName(std::string iBookName) {
	bookName = iBookName;
}

int Book::GetBookID() {
	return bookID;
}

std::string Book::GetBookName() { 
	return bookName;
}

//Destructor
Book::~Book() {
}
