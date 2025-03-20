import 'package:quran_app/features/quran/domain/entities/ayah_entity.dart';
import 'package:quran_app/features/quran/domain/entities/surah_entity.dart';

abstract class QuranRepository {
  Future<List<Surah>> getAllSurah();
  Future<List<Ayah>> getSurahDetail(int surahId);
  Future<List<Surah>> searchSurah(String query);
}