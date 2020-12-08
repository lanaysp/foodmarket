part of 'services.dart';

class TransactionServices {
  static Future<ApiRetunValue<List<Transaction>>> getTransactions() async {
    await Future.delayed(Duration(seconds: 3));

    return ApiRetunValue(value: mockTransactions);
  }

  static Future<ApiRetunValue<Transaction>> submitTransaction(
      Transaction transaction) async {
    await Future.delayed(Duration(seconds: 2));
    // jika ada data
    return ApiRetunValue(value: transaction.copyWith(id: 123, status: TransactionStatus.pending));

    // jika data kosong

    // return ApiRetunValue(message: "transaksi Gagal");
  }
}
