import 'package:quran_app/features/quran/domain/entities/surah_entity.dart';
import 'package:quran_app/features/quran/domain/repository/quran_repository.dart';

class SearchSurahUseCase {
  final QuranRepository repository;

  SearchSurahUseCase(this.repository);
Future<List<Surah>> call(String query) async {
    return await repository.searchSurah(query);
  }

}