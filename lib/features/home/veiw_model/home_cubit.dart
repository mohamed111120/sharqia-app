import 'package:bloc/bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';
import 'package:sharqia_app/core/constants/app_images.dart';

import '../model/category_model.dart';

part 'home_state.dart';

class HomeCubit extends Cubit<HomeState> {
  HomeCubit() : super(HomeInitial());

  static HomeCubit get(context) => BlocProvider.of(context);

  List<CategoryModel> categories = [
    CategoryModel(
      image: AppImages.touristCategory,
      name: 'Tourist Attractions',
      touristPlaces: [
        TouristPlaceModel(
          image: AppImages.talPasta,
          name: 'Tal Basta',
          attractions: [
            AttractionsModel(
                image: AppImages.talPasta6,
                name: 'Oil lamps',
                details:
                    '''Egypt in the pre dynasties period produced pottery of very high quality: The Egyptians were one of the find cultures in the world to create pottery and the pottery was one of the oldest crafts known. Ancient Egyptian pottery made of the mud of the Nalle: pottery used for thee clalily lives and as a central feature in tombs as well,\nThe vil lamp is one of the oldest inventions of mankind, it is a form of lighting and a crucial part of life. The ant Egyptians, Greeks and Komuns ured oil lamp in death ritual and other religious ceremoniesc it was sned in Egyet brom the polemics period till blamic period and developed over the time. The following are the main external parts of this kind of lamp'''),
            AttractionsModel(
                image: AppImages.talPasta5,
                name: 'Jewellery and adornment',
                details:
                    '''The ancient Egyptians were very particular about cleanliness and personal appearance in all the occasions. Cosmetics were an important part of the ancient Egyptian costume. Several objects found in Egyptian tomb reflect the types of adornment they used such as wigs, various cosmetics tools, oils, perfumes, Bracelets, Buttons, Ear rings and ear studs, Necklaces and collars. Adornment used either for social status, or religious beliefs. Ancient Egyptians took great care of their hair; Egyptians hair type displaying an array of many differing hair colours; they used Hena, a potent natural dye for colouring aspects. Egyptians used Galena eye paint (later termed Kohl in Arabic). Kohl was originally used as protection against eye ailments'''),
            AttractionsModel(
                image: AppImages.talPasta4,
                name: 'Scarab',
                details:
                    '''The Scarab was an important symbol in ancient Egyptian religion that was taken the form of the dung beetle, which lays its eggs in dung balls fashioned through rolling, and the sun helps in the process their rebirth. The scarab bug symbolized the restoration of life and used as a symbol of death and rebirth. It had cosmological significance in Ancient Egypt. The scarab beetle was one of the most popular amulets and seals. Several New kingdoms kings used such scarabs for recording annual occasions such as formal marriage or daily life ceremonies.            '''),
            AttractionsModel(
                image: AppImages.talPasta3,
                name: 'Clay Terracotta statues',
                details:
                    '''The terracotta was more frequently used in Hellenistic Greece period 14 B.C). In Egypt, the terracotta was more frequently produced in Alexan dria and El Fayiom; usually made from a fairly coarse, porous type of clay. Terracotta objects are far simpler and cheaper to create. The word Terracotta (baked earth") is most commonly used to describe a type of sculpture that presented several shapes such as men, children and women; the most common shape was the female figurines.            '''),
            AttractionsModel(
                image: AppImages.talPasta2,
                name: 'Coins',
                details:
                    '''The Egyptians used the currency in commercial transactions with the countries of Asia and the Greeks since the late period. Various reforms about currency used in Egypt, trading, and finances were undertaken over the course of centuries. In ancient Egypt, Most daily tramactions were based on oral agreements: The Egyptians used non-coin forms of silver and gold or food, and Trade was done by barter, a reasonably efficient method when mostly basic necessities were exchange and a great military general, who succeeded in creating one lexander the Great, king of Macedonia argest empires of all time, set the first coins entity in Egypt which was founded in Alexandria 336B.C. The Alexander coin has the image of Alexander on the front (obverse). On the back (reverse), Greek and Egyptian holy slogans were represented.             '''),
            AttractionsModel(
                image: AppImages.talPasta1,
                name: 'Sharqia Governorate Excavations',
                details:
                    '''Sharqia Governorate Excavations\nSince the beginning of the twentieth century, archaeological excavations have been conducted in Sharqia Governorate. The French Egyptologist Pierre Montet (1885-1966) excavated "Tanis known now as "San El-Hagar in 1939 and 1940 where he discovered the Temple of god "Amun" and some of the royal Late Period tombs such as the tombs of Kings "Psusennes I" and "Shosheng 11. In 2009 the French-Egyptian joint mission discovered the location of the sacred lake of the goddess "Mut's temple, which is the second sacred lake revealed in the area,
             '''),
          ],
        ),
        TouristPlaceModel(
          image: AppImages.sanElHagar,
          name: 'San Hajar',
          attractions: [
            AttractionsModel(
                image: AppImages.sanElHagar4,
                name: 'Obelisk',
                details:
                    '''A tower and a thin vertical stone column with four sides and ending in a small pyramid, the ancient Egyptian Pharaonic civilization was famous for. Hieroglyphs and royal and religious drawings were carved on its ribs, but it was also found in other civilizations such as Abyssinian, Assyrian, Roman, and Byzantine. The Hammurabi Obelisk is the Code of Hammurabi in ancient Iraq and is the oldest obelisk on which laws and legislation are written in the history of human civilization.'''),
            AttractionsModel(
                image: AppImages.sanElHagar5,
                name: 'The tomb of King Shosheng III',
                details:
                    '''The tomb of King Shosheng III is the fifth tomb found by Pierre Montet in the Tanis royal necropolis between 1939 and 1946. It was excavated in the spring of 1940. Shosheng III, successor of Osorkon II who is also buried Tais (Tomb I), was the sixth ruler of the XXIInd Dynasty and ruled for more forty years during the 9th century BC, mainly in Lower Egypt. At Tanis, he contructed a new monumen al granite gate for the temple of Amun, and the circular mestone well in the temple's first court, northeast of the royal necropolis.'''),
            AttractionsModel(
                image: AppImages.sanElHagar3,
                name: 'Tanis',
                details:
                    '''Sharqia Governorate Excavations\nSince the beginning of the twentieth century, archaeological excavations have been conducted in Sharqia Governorate. The French Egyptologist Pierre Montet (1885-1966) excavated "Tanis known now as "San El-Hagar in 1939 and 1940 where he discovered the Temple of god "Amun" and some of the royal Late Period tombs such as the tombs of Kings "Psusennes I" and "Shosheng 11. In 2009 the French-Egyptian joint mission discovered the location of the sacred lake of the goddess "Mut's temple, which is the second sacred lake revealed in the area,'''),
            AttractionsModel(
                image: AppImages.sanElHagar1,
                name: 'Linen plant',
                details:
                    '''And his plant was taken while flowering a badge indicating the tribal face because of its large growth in it.It was used in building the houses of the poor people and its flowers were working energies since the predynastic era,It is used in the paper industry.'''),
            AttractionsModel(
              image: AppImages.sanElHagar2,
              name: 'Lotus plant',
            ),
            AttractionsModel(
                image: AppImages.sanElHagar6,
                name: 'Papyrus plant',
                details:
                    '''Papyrus is an aquatic flowering plant belonging to the family of Saadia papyrus. It is a perennial and tender herbaceous plant native to Africa, forming high rows when grown in groups resembling reeds or linen submerged in shallow water. The papyrus plant has a long history in terms of use, especially by the ancient Egyptians, as it is the main ingredient in the manufacture of papyrus and is the first leaf that has been made throughout history. In addition, there are parts of the plant that can be eaten, and boats can be made of high floating stems.'''),
          ],
        ),
      ],
    ),
  ];
}
