// Import the functions you need from the SDKs you need
import { initializeApp } from "firebase/app";
import { getAuth, GithubAuthProvider } from "firebase/auth";

// Original Settings
// const firebaseConfig = {
//     apiKey: "AIzaSyDLeDiHmseMx-w9Ba7TI4lL8Lvc0M7Zpeg",
//     authDomain: "adr-manager.firebaseapp.com",
//     projectId: "adr-manager",
//     storageBucket: "adr-manager.appspot.com",
//     messagingSenderId: "313525337788",
//     appId: "1:313525337788:web:0834a7a168fe39352adab9"
// };

// Jack's Firbase OAuth App
const firebaseConfig = {
    apiKey: "AIzaSyCK2QsARUP0bGhNV-j4r0SSg5VbXPB_fUE",
    authDomain: "adr-manager-a97b8.firebaseapp.com",
    projectId: "adr-manager-a97b8",
    storageBucket: "adr-manager-a97b8.appspot.com",
    messagingSenderId: "700642581068",
    appId: "1:700642581068:web:4ea326fce3cba7154372e9"
};

// Initialize Firebase
const app = initializeApp(firebaseConfig);
const auth = getAuth(app);
const GithubProvider = new GithubAuthProvider();

export { app, auth, GithubProvider };
