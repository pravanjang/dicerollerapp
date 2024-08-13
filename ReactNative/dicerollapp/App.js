import { StatusBar } from 'expo-status-bar';
import { useState } from 'react';
import { Button, StyleSheet, Text, View, Image } from 'react-native';

export default function App() {

  const [diceno, setDiceno] = useState(0);

  const images = [
    require('./assets/diceimages/plain-dice-1.png'),
    require('./assets/diceimages/plain-dice-2.png'),
    require('./assets/diceimages/plain-dice-3.png'),
    require('./assets/diceimages/plain-dice-4.png'),
    require('./assets/diceimages/plain-dice-5.png'),
    require('./assets/diceimages/plain-dice-6.png')
  ]

  function rollthedice(){
    const randomnumber = Math.floor(Math.random() * 6);
    setDiceno(randomnumber);
  }

  return (
    <>
      <StatusBar backgroundColor = "transparent" animated={true} barStyle='dark-content'  />
      <View style={styles.topcontainer}>
        <Text style={styles.appheadertext}>Dice Roller</Text>
      </View>
      
      <View style={styles.container}>
        <View>
          <Image source={images[diceno]}/>
        </View>
        <Text style={styles.redtextbox}>{diceno+1}</Text>
        <Button title='Roll' onPress={rollthedice}/>
      </View>
    </>
    
  );
}

const styles = StyleSheet.create({
  topcontainer: {
    flex: 1,
    backgroundColor: "#00BCD4",
    alignItems: "center",
  },
  appheadertext:{
    marginTop: 32,
    color: "darkblue",
    fontSize: 24,
  },
  container: {
    flex: 11,
    backgroundColor: "#fff",
    alignItems: "center",
    justifyContent: "center",
  },
  redtextbox: {
    margin: 16,
    color: "darkblue",
    fontSize: 24
  },
});
