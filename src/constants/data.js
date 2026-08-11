export const PORTFOLIO_DATA = {
    profile: {
        brand: 'RiqsuDev',
        name: 'Fariq Naufal Diaz',
        role: 'Flutter Developer',
        location: 'Jakarta, Indonesia',
        age: '27 Years Old',
        bio: 'Flutter Developer with deep expertise in building high-performance, scalable, and user-centric mobile applications. Proficient in Flutter and advanced state management (BLoC, Cubit, GetX, Provider, MobX). Experienced in enterprise-grade apps, mobile banking, and internal tools with clean architecture and seamless API integration.'
    },
    technologies: [
        { name: 'Flutter', icon: require('../assets/icons/ic_flutter.png') },
        { name: 'Dart', icon: require('../assets/icons/ic_dart.png') },
        { name: 'Firebase', icon: require('../assets/icons/ic_firebase.png') },
        { name: 'Java', icon: require('../assets/icons/ic_java.png') },
        { name: 'Laravel', icon: require('../assets/icons/ic_laravel.png') },
        { name: 'React Native', icon: require('../assets/icons/ic_react_native.png') },
        { name: 'Node JS', icon: require('../assets/icons/ic_node.png') },
        { name: 'JavaScript', icon: require('../assets/icons/ic_javascript.png') },
        { name: 'Android Studio', icon: require('../assets/icons/ic_android_studio.png') },
        { name: 'Visual Studio Code', icon: require('../assets/icons/ic_vs_code.png') },
        { name: 'Git', icon: require('../assets/icons/ic_git.png') },
        { name: 'Figma', icon: require('../assets/icons/ic_figma.png') },
        { name: 'MySQL', icon: require('../assets/icons/ic_sql.png') },
        { name: 'Postman', icon: require('../assets/icons/ic_postman.png') },
    ],
    projects: [
        {
            id: 1,
            type: 'Flutter Project',
            title: 'DH Mobile',
            description: 'DH Mobile is an internal super app designed to support operational and administrative processes for employees of PT Darma Henwa Tbk.',
            tech: [
                require('../assets/icons/ic_flutter.png'),
                require('../assets/icons/ic_mobx.png'),
            ],
            action: 'CHECK ON PLAY STORE',
            link: 'https://play.google.com/store/apps/details?id=com.darmahenwa.superapp&hl=id',
        },
        {
            id: 2,
            type: 'Flutter Project',
            title: 'Rukun',
            description: 'Rukun Rukun is a free mobile-based regional management application. Rukun can be used for housing, cluster, etc.',
            tech: [
                require('../assets/icons/ic_flutter.png'),
                require('../assets/icons/ic_bloc.png'),
            ],
            action: 'CHECK ON PLAY STORE',
            link: 'https://play.google.com/store/apps/details?id=com.rukun.app&hl=id',
        },
        {
            id: 3,
            type: 'Flutter Project',
            title: 'KBStar',
            description: 'KBStar is a financial services application from Bank Bukopin, KBstar comes with a UI/UX version a...',
            tech: [
                require('../assets/icons/ic_flutter.png'),
                require('../assets/icons/ic_getx.png'),
            ],
            action: 'CHECK ON PLAY STORE',
            link: 'https://play.google.com/store/apps/details?id=com.kbBukopin.Kbstar&hl=id',
        },
        {
            id: 4,
            type: 'Flutter Project',
            title: 'Travel Holic',
            description: 'Travelholic is an android application used for booking tickets to tourist destinations. Built with state management...',
            tech: [
                require('../assets/icons/ic_flutter.png'),
                require('../assets/icons/ic_bloc.png'),
                require('../assets/icons/ic_firebase.png'),
            ],
            action: 'CHECK ON GITHUB',
            link: 'https://github.com/Fariqofficial/TravelHolic',
        },
        {
            id: 5,
            type: 'Flutter Project',
            title: 'Attendance App',
            description: 'Mobile Attendance System with Geofencing Radius Checking, Interactive Map Location Picker, Reverse Geocoding, and BLoC State Management built with Clean Architecture.',
            tech: [
                require('../assets/icons/ic_flutter.png'),
                require('../assets/icons/ic_bloc.png'),
                require('../assets/icons/ic_sqflite.png'),
            ],
            action: 'CHECK ON GITHUB',
            link: 'https://github.com/Fariqofficial/Attendance-App',
        },
        {
            id: 6,
            type: 'Android Freelance Project',
            title: 'Yuk Vaksin',
            description: 'Yuk Vaksin is an application for people who want to register for Covid-19 vaccinations. This application...',
            tech: [
                require('../assets/icons/ic_java.png'),
                require('../assets/icons/ic_firebase.png'),
            ],
            action: 'CHECK ON GITHUB',
            link: 'https://github.com/Fariqofficial/Yuk-Vaksin',
        },
    ],
    contacts: {
        address: 'Jakarta, Indonesia',
        phone: '085156648147',
        email: 'fariqn.diaz22@gmail.com',
        whatsapp: '085156648147'
    }
};