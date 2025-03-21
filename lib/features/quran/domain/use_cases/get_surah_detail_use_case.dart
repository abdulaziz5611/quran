import 'package:quran_app/features/quran/domain/entities/ayah_entity.dart';
import 'package:quran_app/features/quran/domain/entities/surah_entity.dart';
import 'package:quran_app/features/quran/domain/repository/quran_repository.dart';

class GetSurahDetailUseCase {
  final QuranRepository repository;

  GetSurahDetailUseCase({required this.repository});
 Future<List<Ayah>> call(int surahId) async {
    return await repository.getSurahDetail(surahId);
  }

}