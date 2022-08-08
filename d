using System;

namespace Project
{
	class programm
	{
		static void Main(string[] args)
		{ 
			void Zadacha56()
			{ 
				//Задача 56
				
				int rows = 2;
				int columns = 3;
				int[,] array = new int[rows, columns];
				
				FillArray(array);
				PrintArray(array);
				
				for (int i = 0; i < rows; i++)
				{
					for (int j = 0; j < columns; j++)
					{
						for (int k = 0; k < columns - 1 - j; k++)
						{
							if (array[i, k] < array[i,k + 1])
							{
								int temp = array[i, k];
								array[i,k] = array[i, k +1];
								array[i,k + 1] = temp;
							}
						}
					}
				}
				PrintArray(array);
				
				int sumMin = 0;
				int sumMinIndex = 0;
				
				for (int j = 0; j < columns; j++)
				{
					sumMin += array[0, j];
				}
				Console.WriteLine ($"Сумма 1-й строки равна: {sumMin}");
				
				for (int i = 1; i < rows; i++)
				{
					int sum = 0;
					for (int j = 0; j < columns; j++)
					{
						sum += array[i,j];
					}
					Console.WriteLine($"Сумма {i+1}- й строки равна: {sum}");
				
					if (sum < sumMin)
					{
						sumMin = sum;
						sumMinIndex = i;
					}
				}
				Console.WriteLine();
				Console.WriteLine($"Минимальная сумма находится в строке {sumMinIndex-1 )
				
				
		
				
			}
			Zadacha56();
				
		}
		
		static void FillArray(int[,] array)
		{
			Random random = new Random();
			int rows = array.GetLength(0);
			int columns = array.GetLength(1);
			
			for(int i = 0; i < rows;i++)
			{
				for(int j = 0; j < columns; j++)
				{
					array[i, j] = random.Next(0,10);
				}
			}
		}
		

		static void PrintArray(int [,] array)
		{
			int rows = array.GetLength(0);
			int columns = array.GetLength(1);
			
			Console.WriteLine("Вывод массива: ");
			for(int i = 0; i < rows; i++)
			{
				for(int j = 0; j < columns; j++)
				{
					Console.Write(array[i,j] + "\t");
				}
				Console.WriteLine();
			}
			Console.WriteLine();
		}
	}
}
