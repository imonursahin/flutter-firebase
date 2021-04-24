// MyApp sınıfını aşağıdaki kod ile değiştirin ve uygulamanızı çalıştırın.


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Firebase for Flutter Demo',
      home: Scaffold(
        body: StreamBuilder(
          stream:  FirebaseFirestore.instance.collection('olusturdugunuz_koleksiyonun_adi').snapshots(),
          builder: ( BuildContext ctx, AsyncSnapshot<QuerySnapshot> snapshot){
            if(snapshot.connectionState == ConnectionState.waiting){
              return Center(child: CircularProgressIndicator(),);
            }
            final documents = snapshot.data.docs;
            return ListView.builder(
              itemBuilder: (ctx, idx) {
                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(documents[idx].data()['alan_adi']),
                );
              },
              itemCount: documents.length,
            );
          },
        ),
        floatingActionButton: FloatingActionButton(
          child: Icon(Icons.add),
          onPressed: () {
          },
        ),
      ),
    );
  }
}