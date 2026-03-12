class Mobil {
  final int? id;
  final String merk;
  final String model;
  final int tahun;
  final int harga;
  final String? userId;

  Mobil({
    this.id,
    required this.merk,
    required this.model,
    required this.tahun,
    required this.harga,
    this.userId,
  });

  factory Mobil.fromMap(Map<String, dynamic> map) {
    return Mobil(
      id: map['id'],
      merk: map['merk'] ?? '',
      model: map['model'] ?? '',
      tahun: map['tahun'] ?? 0,
      harga: map['harga'] ?? 0,
      userId: map['user_id'],
    );
  }

  Map<String, dynamic> toMap() {
    return {
      if (id != null) 'id': id,
      'merk': merk,
      'model': model,
      'tahun': tahun,
      'harga': harga,
      if (userId != null) 'user_id': userId,
    };
  }
}
