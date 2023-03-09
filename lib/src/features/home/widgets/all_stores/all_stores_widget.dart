import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:pepperoni/pepperoni.dart';

class AllStoresWidget extends StatefulWidget {
  final TabController tabController;
  const AllStoresWidget({super.key, required this.tabController});

  @override
  State<AllStoresWidget> createState() => _AllStoresWidgetState();
}

class _AllStoresWidgetState extends State<AllStoresWidget> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        CategoryListWidget(
          items: [
            CategoryListItem(
              (item) {
                widget.tabController.animateTo(1);
              },
              label: 'Restaurantes',
              imagemUrl:
                  'https://images.tcdn.com.br/img/img_prod/326825/pao_de_hamburguer_bambini_tradicional_com_embalagem_individual_90g_cx_30_unidades_cod_318_46_4_20190426165419.png',
            ),
            CategoryListItem(
              (item) {
                widget.tabController.animateTo(2);
              },
              label: 'Mercado',
              imagemUrl:
                  'https://cdn.w600.comps.canstockphoto.com.br/fachada-pequeno-loja-mercado-cena-cliparte-vetor_csp86637403.jpg',
            ),
            CategoryListItem(
              (item) {
                widget.tabController.animateTo(3);
              },
              label: 'Bebidas',
              imagemUrl:
                  'https://static1.minhavida.com.br/articles/fb/8e/3b/b2/bebidas-destiladas-e-fermentadas-orig-1.jpg',
            ),
            CategoryListItem(
              (item) {
                widget.tabController.animateTo(4);
              },
              label: 'Farmacia',
              imagemUrl:
                  'https://idec.org.br/sites/default/files/dicasedireitos/imagem_noticia_1_0.png',
            ),
            CategoryListItem(
              (item) {
                widget.tabController.animateTo(5);
              },
              label: 'Pet',
              imagemUrl:
                  'https://www.amoviralata.com/wp-content/uploads/2021/06/nome-pet-shop.png',
            ),
            CategoryListItem(
              (item) {
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => Container(
                          color: Colors.red,
                        )));
              },
              label: 'Club Lfood',
              imagemUrl:
                  'https://pbs.twimg.com/profile_images/1406730683595341828/H2SAhdvB_400x400.jpg',
            ),
            CategoryListItem((item) {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => Container(
                    color: Colors.yellow,
                  ),
                ),
              );
            },
                label: 'Feed',
                imagemUrl:
                    'https://i.pinimg.com/originals/7a/e2/0e/7ae20e8b68ebab2473bef78abfca6662.jpg')
          ],
        ),
      ],
    );
  }
}
