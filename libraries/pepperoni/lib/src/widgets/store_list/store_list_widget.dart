import 'package:flutter/material.dart';

class StoreListWidget extends StatefulWidget {
  final List<StoreItem> stores;
  const StoreListWidget({
    super.key,
    required this.stores,
  });

  @override
  State<StoreListWidget> createState() => _StoreListWidgetState();
}

class _StoreListWidgetState extends State<StoreListWidget> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Lojas',
            style: TextStyle(
                fontSize: 18, fontWeight: FontWeight.w500, color: Colors.black),
          ),
          SizedBox(
            height: 16,
          ),
          ListView.separated(
            physics: const NeverScrollableScrollPhysics(),
            separatorBuilder: (context, index) => SizedBox(
              height: 16,
            ),
            shrinkWrap: true,
            itemCount: widget.stores.length,
            itemBuilder: (context, index) {
              return StoreItemWidget(
                store: widget.stores[index],
              );
            },
          ),
        ],
      ),
    );
  }
}

class StoreItem {
  final String storeName;
  final String rate;
  final String price;
  final String time;
  final String kindOfItem;
  final String imageUrl;
  StoreItem(
      {required this.storeName,
      required this.rate,
      required this.price,
      required this.time,
      required this.kindOfItem,
      required this.imageUrl});
}

class StoreItemWidget extends StatelessWidget {
  final StoreItem store;
  const StoreItemWidget({
    super.key,
    required this.store,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 70,
      width: MediaQuery.of(context).size.width,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.only(right: 16.0),
            child: CircleAvatar(
              radius: 32,
              backgroundImage: NetworkImage(store.imageUrl),
            ),
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  store.storeName,
                  style: TextStyle(fontWeight: FontWeight.w500, fontSize: 14),
                ),
                Row(
                  children: [
                    Icon(
                      Icons.star,
                      size: 16,
                      color: Color.fromARGB(255, 201, 201, 55),
                    ),
                    Text(
                      store.rate,
                      style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 14,
                          color: Color.fromARGB(255, 201, 201, 55)),
                    ),
                    Text(' * ${store.kindOfItem} * 1.4 km',
                        style: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 14,
                        )),
                  ],
                ),
                SizedBox(
                  height: 4,
                ),
                Text('${store.time} min * R\$ ${store.price}',
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                    )),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Icon(Icons.favorite_border),
          )
        ],
      ),
    );
  }
}
