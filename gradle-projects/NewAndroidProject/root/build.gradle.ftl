// Top-level build file where you can add configuration options common to all sub-projects/modules.

buildscript {
    // Version of the Library involved.
    ext {
        android_version = "25.3.1"
        dagger_version = "2.9"
        kotlin_version = "1.1.2-3"
        anko_version = "0.10.0"
        conductor_version = "2.1.3"
        rxjava_version = "2.1.1"
        rxkotlin_version = "2.0.3"
        rxandroid_version = "2.0.1"
        rxrelay_version = "2.0.0"
        retrofit_version = "2.3.0"

        mosby_version = "3.0.4"
        mosby_conductor_version = "3.0.0"

        fast_android_networking_version = "1.0.0"
    }
    ext.libraries = [
            kotlin : "org.jetbrains.kotlin:kotlin-stdlib:$kotlin_version",

            fast_android_networking: "com.amitshekhar.android:rx2-android-networking:$fast_android_networking_version",
    ]
    ext.libraries.android = [
            appcompat: "com.android.support:appcompat-v7:$android_version",
            design: "com.android.support:design:$android_version",
    ]
    ext.libraries.dagger = [
            dagger          : "com.google.dagger:dagger:$dagger_version",
            dagger_compiler : "com.google.dagger:dagger-compiler:$dagger_version",
    ]
    ext.libraries.anko = [
            anko            : "org.jetbrains.anko:anko-sdk15:$anko_version",
            support_v4      : "org.jetbrains.anko:anko-support-v4:$anko_version",
            appcompat       : "org.jetbrains.anko:anko-appcompat-v7:$anko_version",
            design          : "org.jetbrains.anko:anko-design:$anko_version",
            recycler_view   : "org.jetbrains.anko:anko-recyclerview-v7:$anko_version",
    ]
    ext.libraries.rxjava2 = [
            rxjava2         : "io.reactivex.rxjava2:rxjava:$rxjava_version",
            rxkotlin        : "io.reactivex.rxjava2:rxkotlin:$rxkotlin_version",
            rxandroid       : "io.reactivex.rxjava2:rxandroid:$rxandroid_version",
    ]
    ext.libraries.retrofit2 = [
            retrofit2       : "com.squareup.retrofit2:retrofit:$retrofit_version",
            converter_gson  : "com.squareup.retrofit2:converter-gson:$retrofit_version",
    ]
    ext.libraries.conductor = [
            conductor       :
                    dependencies.create("com.bluelinelabs:conductor:$conductor_version") {
                        exclude group: 'com.google.code.findbugs', module: 'jsr305'
                    },
            support:
                    dependencies.create("com.bluelinelabs:conductor-support:$conductor_version") {
                        exclude group: 'com.google.code.findbugs', module: 'jsr305'
                    },
            rxlifecycle:
                    dependencies.create("com.bluelinelabs:conductor-rxlifecycle2:$conductor_version") {
                        exclude group: 'com.google.code.findbugs', module: 'jsr305'
                    },
    ]
    ext.libraries.mosby = [
            mvp  : "com.hannesdorfmann.mosby3:mvp:$mosby_version",
            mvp_conductor: "com.hannesdorfmann.mosby3:mvp-conductor:$mosby_conductor_version",
    ]
    repositories {
        jcenter()
<#if mavenUrl != "mavenCentral">
        maven {
            url '${mavenUrl}'
        }
</#if>
<#if isInstantApp!false>
        flatDir(name: 'support', dirs: '${whSupportLibDir}')
</#if>
    }
    dependencies {
        classpath 'com.android.tools.build:gradle:${gradlePluginVersion}'
        classpath "org.jetbrains.kotlin:kotlin-gradle-plugin:$kotlin_version"

        // NOTE: Do not place your application dependencies here; they belong
        // in the individual module build.gradle files
    }
}

allprojects {
    repositories {
        jcenter()
        maven {
            url "https://maven.google.com"
        }
        maven {
            url "https://jitpack.io"
        }
<#if mavenUrl != "mavenCentral">
        maven {
            url '${mavenUrl}'
        }
</#if>
<#if isInstantApp!false>
        flatDir(name: 'support', dirs: '${whSupportLibDir}')
</#if>
    }
}

task clean(type: Delete) {
    delete rootProject.buildDir
}
