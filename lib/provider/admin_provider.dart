import 'package:flutter/cupertino.dart';

import '../data_reposotries/fire_store_helper.dart';
import '../model/category_model.dart';

class AdminProvider extends ChangeNotifier {
  AdminProvider() {
    getAllCategories();
    // getAllSliders();
  }

  // add new category

  // addNewCategory() async {
  //   if (imageFile != null) {
  //     if (categoryFormKey.currentState!.validate()) {
  //       // add category process
  //       AppRouter.appRouter.showLoadingDialoug();
  //       String imageUrl = await StorageHelper.storageHelper
  //           .uploadNewImage("cats_images", imageFile!);
  //       Category category = Category(
  //           imageUrl: imageUrl,
  //           nameAr: catNameArController.text,
  //           nameEn: catNameEnController.text);

  //       String? id =
  //           await FirestoreHelper.firestoreHelper.addNewCategory(category);

  //       AppRouter.appRouter.hideDialoug();
  //       if (id != null) {
  //         category.id = id;
  //         allCategories!.add(category);
  //         notifyListeners();
  //         catNameArController.clear();
  //         catNameEnController.clear();
  //         imageFile = null;
  //         notifyListeners();
  //         AppRouter.appRouter
  //             .showCustomDialoug('Success', 'Your category has been added');
  //       }
  //     }
  //   } else {
  //     AppRouter.appRouter
  //         .showCustomDialoug('Error', 'You have to pick image first');
  //   }
  // }

  // get cateogies
  List<CategoryModel>? allCategories;
  // List<Product>? allProducts;
  // List<Slider>? allSliders;
  getAllCategories() async {
    allCategories =
        await FireStoreHelper.fireStoreHelper.getAllCategoriesModel();
    notifyListeners();
  }

  // delete category
  // deleteCategory(Category category) async {
  //   AppRouter.appRouter.showLoadingDialoug();
  //   bool deleteSuccess =
  //       await FirestoreHelper.firestoreHelper.deleteCategoey(category.id!);
  //   if (deleteSuccess) {
  //     allCategories!.remove(category);
  //     notifyListeners();
  //   }
  //   AppRouter.appRouter.hideDialoug();
  // }

  // goToEditCategoryPage(Category category) {
  //   catNameArController.text = category.nameAr;
  //   catNameEnController.text = category.nameEn;
  //   AppRouter.appRouter.goToWidget(EditCategory(category));
  // }

  // updateCategory(Category category) async {
  //   AppRouter.appRouter.showLoadingDialoug();
  //   if (imageFile != null) {
  //     String imageUrl = await StorageHelper.storageHelper
  //         .uploadNewImage("cats_images", imageFile!);
  //     category.imageUrl = imageUrl;
  //   }
  //   Category newCategory = Category(
  //       id: category.id,
  //       imageUrl: category.imageUrl,
  //       nameAr: catNameArController.text.isEmpty
  //           ? category.nameAr
  //           : catNameArController.text,
  //       nameEn: catNameEnController.text.isEmpty
  //           ? category.nameEn
  //           : catNameEnController.text);

  //   bool? isUpdated =
  //       await FirestoreHelper.firestoreHelper.updateCategory(newCategory);

  //   if (isUpdated != null && isUpdated) {
  //     int index = allCategories!.indexOf(category);
  //     allCategories![index] = newCategory;
  //     imageFile = null;
  //     catNameEnController.clear();
  //     catNameArController.clear();
  //     notifyListeners();
  //     AppRouter.appRouter.hideDialoug();
  //     AppRouter.appRouter.hideDialoug();
  //   }
  // }

  // TextEditingController sliderTitleController = TextEditingController();
  // TextEditingController sliderUrlController = TextEditingController();
  // TextEditingController productNameController = TextEditingController();
  // TextEditingController productDescriptionController = TextEditingController();
  // TextEditingController productPriceController = TextEditingController();
  // GlobalKey<FormState> addProductKey = GlobalKey();
  // addNewProduct(String catId) async {
  //   if (imageFile != null) {
  //     if (addProductKey.currentState!.validate()) {
  //       AppRouter.appRouter.showLoadingDialoug();
  //       String imageUrl = await StorageHelper.storageHelper
  //           .uploadNewImage("products_images", imageFile!);
  //       Product product = Product(
  //           imageUrl: imageUrl,
  //           name: productNameController.text,
  //           description: productDescriptionController.text,
  //           price: productPriceController.text,
  //           catId: catId);

  //       String? id =
  //           await FirestoreHelper.firestoreHelper.addNewProduct(product);

  //       AppRouter.appRouter.hideDialoug();
  //       if (id != null) {
  //         product.id = id;
  //         allProducts?.add(product);
  //         notifyListeners();
  //         productNameController.clear();
  //         productDescriptionController.clear();
  //         productPriceController.clear();
  //         imageFile = null;
  //         notifyListeners();
  //         AppRouter.appRouter
  //             .showCustomDialoug('Success', 'Your Product has been added');
  //       }
  //     }
  //   } else {
  //     AppRouter.appRouter
  //         .showCustomDialoug('Error', 'You have to pick image first');
  //   }
  // }

  // getAllProducts(String catId) async {
  //   allProducts = null;
  //   notifyListeners();
  //   List<Product>? products =
  //       await FirestoreHelper.firestoreHelper.getAllProducts(catId);

  //   allProducts = products;
  //   notifyListeners();
  // }

  // getAllSliders() async {
  //   allSliders = await FirestoreHelper.firestoreHelper.getAllSliders();
  // }

  // AddNewSlider() async {
  //   if (imageFile != null) {
  //     AppRouter.appRouter.showLoadingDialoug();
  //     String imageUrl = await StorageHelper.storageHelper
  //         .uploadNewImage("Slider_images", imageFile!);
  //     Slider slider = Slider(
  //         imageUrl: imageUrl,
  //         title: sliderTitleController.text,
  //         url: sliderUrlController.text);

  //     String? id = await FirestoreHelper.firestoreHelper.addNewSlider(slider);

  //     AppRouter.appRouter.hideDialoug();
  //     if (id != null) {
  //       slider.id = id;
  //       allSliders?.add(slider);
  //       notifyListeners();
  //       sliderTitleController.clear();
  //       sliderUrlController.clear();

  //       imageFile = null;
  //       notifyListeners();
  //       AppRouter.appRouter
  //           .showCustomDialoug('Success', 'Your Slider has been added');
  //     }
  //   } else {
  //     AppRouter.appRouter
  //         .showCustomDialoug('Error', 'You have to pick image first');
  //   }
  // }
  // update category
//   updateCategory()async{
//     FirestoreHelper.firestoreHelper.updateCategory(category)
//   }
}
