
import 'dart:convert';

List<TopCourses> topCoursesFromJson(String str) => List<TopCourses>.from(json.decode(str).map((x) => TopCourses.fromJson(x)));

class TopCourses {
    TopCourses({
        required this.id,
        required this.title,
        required this.shortDescription,
        required this.description,
        required this.outcomes,
        required this.language,
        required this.categoryId,
        required this.subCategoryId,
        required this.section,
        required this.requirements,
        required this.price,
        required this.discountFlag,
        required this.discountedPrice,
        required this.level,
        required this.userId,
        required this.thumbnail,
        required this.videoUrl,
        required this.dateAdded,
        required this.lastModified,
        required this.visibility,
        required this.isTopCourse,
        required this.isAdmin,
        required this.status,
        required this.courseOverviewProvider,
        required this.metaKeywords,
        required this.metaDescription,
        required this.isFreeCourse,
        required this.topCourseExternal,
        required this.externalLink,
        required this.rating,
        required this.numberOfRatings,
        required this.instructorName,
        required this.totalEnrollment,
        required this.shareableLink,
        required this.fullPrice,
        required this.videoCount,
    });

    final String id;
    final String title;
    final String shortDescription;
    final String description;
    final List<dynamic> outcomes;
    final String language;
    final String categoryId;
    final String subCategoryId;
    final String section;
    final List<dynamic> requirements;
    final String price;
    final String discountFlag;
    final String discountedPrice;
    final String level;
    final String userId;
    final String thumbnail;
    final String videoUrl;
    final String dateAdded;
    final String lastModified;
    final dynamic visibility;
    final String isTopCourse;
    final String isAdmin;
    final String status;
    final String courseOverviewProvider;
    final String metaKeywords;
    final String metaDescription;
    final dynamic isFreeCourse;
    final String topCourseExternal;
    final String externalLink;
    final int rating;
    final int numberOfRatings;
    final String instructorName;
    final int totalEnrollment;
    final String shareableLink;
    final String fullPrice;
    final String videoCount;

    factory TopCourses.fromJson(Map<String, dynamic> json) => TopCourses(
        id: json["id"],
        title: json["title"],
        shortDescription: json["short_description"],
        description: json["description"],
        outcomes: List<dynamic>.from(json["outcomes"].map((x) => x)),
        language: json["language"],
        categoryId: json["category_id"],
        subCategoryId: json["sub_category_id"],
        section: json["section"],
        requirements: List<dynamic>.from(json["requirements"].map((x) => x)),
        price: json["price"],
        discountFlag: json["discount_flag"],
        discountedPrice: json["discounted_price"],
        level: json["level"],
        userId: json["user_id"],
        thumbnail: json["thumbnail"],
        videoUrl: json["video_url"],
        dateAdded: json["date_added"],
        lastModified: json["last_modified"],
        visibility: json["visibility"],
        isTopCourse: json["is_top_course"],
        isAdmin: json["is_admin"],
        status: json["status"],
        courseOverviewProvider: json["course_overview_provider"],
        metaKeywords: json["meta_keywords"],
        metaDescription: json["meta_description"],
        isFreeCourse: json["is_free_course"],
        topCourseExternal: json["external"],
        externalLink: json["external_link"],
        rating: json["rating"],
        numberOfRatings: json["number_of_ratings"],
        instructorName: json["instructor_name"],
        totalEnrollment: json["total_enrollment"],
        shareableLink: json["shareable_link"],
        fullPrice: json["full_price"],
        videoCount: json["video_count"],
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "title": title,
        "short_description": shortDescription,
        "description": description,
        "outcomes": List<dynamic>.from(outcomes.map((x) => x)),
        "language": language,
        "category_id": categoryId,
        "sub_category_id": subCategoryId,
        "section": section,
        "requirements": List<dynamic>.from(requirements.map((x) => x)),
        "price": price,
        "discount_flag": discountFlag,
        "discounted_price": discountedPrice,
        "level": level,
        "user_id": userId,
        "thumbnail": thumbnail,
        "video_url": videoUrl,
        "date_added": dateAdded,
        "last_modified": lastModified,
        "visibility": visibility,
        "is_top_course": isTopCourse,
        "is_admin": isAdmin,
        "status": status,
        "course_overview_provider": courseOverviewProvider,
        "meta_keywords": metaKeywords,
        "meta_description": metaDescription,
        "is_free_course": isFreeCourse,
        "external": topCourseExternal,
        "external_link": externalLink,
        "rating": rating,
        "number_of_ratings": numberOfRatings,
        "instructor_name": instructorName,
        "total_enrollment": totalEnrollment,
        "shareable_link": shareableLink,
        "full_price": fullPrice,
        "video_count": videoCount,
    };
}
