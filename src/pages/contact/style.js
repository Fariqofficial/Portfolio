import { StyleSheet } from "react-native";

const styles = StyleSheet.create({
    container: {
        width: '100%',
        maxWidth: 1000,
        marginTop: 40,
        paddingTop: 30,
        borderTopWidth: 1,
    },
    contactRow: {
        flexDirection: 'row',
        flexWrap: 'wrap',
        justifyContent: 'space-around',
        width: '100%',
    }
});

export default styles;