#/bin/bash
# Dalsia arana

Corp=('HP' '' 'Sony' 'Samsung')

echo "Vyber si z troch uloh:"
echo "Vypis vsetky elementy"
echo "Vypis treti element v poradi"
echo "Vypis druhy element v poradi"

read -p "Vyber si moznost (1/2/3): " choice

case $choice in
1)
echo "Vybral si moznost 1"
echo "All elements: ${Corp[*]}"
;;

2)
echo "Vybral si moznost 2"
echo "Third element is: ${Corp[2]}"
;;

3)
echo "Vybral si moznost 3"
echo "Second element is: ${Corp[1]}"
;;
*)
echo "Invalid choice. Please choose 1, 2 or 3."
;;
esac
