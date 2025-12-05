import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class InfiniteScrollScreen extends StatefulWidget {
  static const name = 'infinite_scroll_screen';
  const InfiniteScrollScreen({super.key});

  @override
  State<InfiniteScrollScreen> createState() => _InfiniteScrollScreenState();
}

class _InfiniteScrollScreenState extends State<InfiniteScrollScreen> {
  List<int> imagesID = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15];
  final ScrollController scrollController = ScrollController();
  bool isLoading = false;
  bool isMounted = true;

  @override
  void initState() {
    super.initState();
    scrollController.addListener(() {
      if ((scrollController.position.pixels + 500) >=
          scrollController.position.maxScrollExtent) {
        loadingNextPage();
      }
    });
  }

  @override
  void dispose() {
    scrollController.dispose();
    bool isMounted = false;
    super.dispose();
  }

  Future loadingNextPage() async {
    if (isLoading) return;
    isLoading = true;
    setState(() {});
    await Future.delayed(const Duration(seconds: 1));
    lastNumbersImagesID();
    isLoading = false;
    // TODO: Revisar si está montado el componente - widget
    if (!isMounted) return;
    setState(() {});
  }

  void lastNumbersImagesID() {
    final lastID = imagesID.last;
    imagesID.addAll([1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15]
        .map((e) => lastID + e));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: const Text('Texto Infinite Scroll'),
      ),
      body: MediaQuery.removePadding(
        context: context,
        removeTop: true,
        removeBottom: true,
        child: ListView.builder(
          controller: scrollController,
          itemCount: imagesID.length,
          itemBuilder: (context, index) {
            return FadeInImage(
                width: double.infinity,
                height: 300,
                fit: BoxFit.cover,
                placeholder: const AssetImage("assets/images/jar-loading.gif"),
                image: NetworkImage(
                    'https://picsum.photos/id/${imagesID[index]}/500/300'));
          },
        ),
      ),
      floatingActionButton: FloatingActionButton(
          onPressed: () => context.pop(),
          child: isLoading
              ? FadeIn(
                  child: SpinPerfect(
                      infinite: true, child: const CircularProgressIndicator()),
                )
              : FadeIn(
                  child: const Icon(Icons.arrow_back_ios_new_outlined),
                )),
    );
  }
}
