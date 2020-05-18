Table table;

void setup() {
  size(1500, 250);
  table = new Table();
 
}
 


void draw() {
  background(204);

}
void mouseMoved() {
 
  table.addColumn("y");
  
  TableRow newRow = table.addRow();
  newRow.setInt("y", mouseY);
  
  saveTable(table, "data/new.csv");
}
