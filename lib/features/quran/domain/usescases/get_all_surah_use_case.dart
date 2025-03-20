import 'package:quran_app/features/quran/domain/entities/surah_entity.dart';
import 'package:quran_app/features/quran/domain/repository/quran_repository.dart';

class GetAllSurahUseCase {
  final QuranRepository repository;

  GetAllSurahUseCase(this.repository);

  Future<List<Surah>> call() async {
    return await repository.getAllSurah();
  }
}