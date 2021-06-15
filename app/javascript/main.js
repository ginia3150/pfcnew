const element1 = document.querySelector('#cbA');
element1.checked = true; // 選択状態を確認

const element2 = document.querySelector('#cbB');
element2.checked = false; // 選択状態を確認

const element3 = document.querySelector('#cbC');
element3.checked = false; // 選択状態を確認

console.log('checkedAの値', checkedA); // 結果: false
console.log('checkedBの値', checkedB); // 結果: true
console.log('checkedCの値', checkedC); // 結果: false
