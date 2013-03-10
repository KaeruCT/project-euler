import java.lang.Math;

public class Main {

	public static long sumOfSquares(int n) {
		long sq = 1L;

		for (int i = 2; i <= n; i += 1) {
			sq += Math.pow(i, 2);
		}
		return sq;
	}

	public static long squareOfSums(int n) {
		long sq = n * (n + 1) / 2;
		return (long)Math.pow(sq, 2);
	}

	public static void main(String[] args) {
		int n = 100;

		long r = squareOfSums(n) - sumOfSquares(n);
		System.out.println(r);
	}
}
