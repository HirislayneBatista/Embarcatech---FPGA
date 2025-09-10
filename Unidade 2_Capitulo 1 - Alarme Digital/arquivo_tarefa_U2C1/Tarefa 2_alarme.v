/*Residencia Tecnologica em FPGA - Residente: Hirislayne Batista 
 * Data: 15/08/2025
 * Descrição: Módulo de alarme com três botões
 * 
 * Este código é um exemplo de como implementar um alarme simples usando lógica combinacional.
 * O alarme será ativado se pelo menos dois dos três botões forem pressionados.
 */

// Módulo de alarme com três botões
module alarme (A, B, C, Y);
  // Entradas e saídas do módulo
  input A, B, C; // botões
  output Y;      // led
  
  // Fios internos para a lógica combinacional
  wire AB, AC, BC;
  
  // Lógica combinacional para o alarme
  assign AB = A & B;
  assign AC = A & C;
  assign BC = B & C;
  assign Y = AB | AC | BC;

endmodule 