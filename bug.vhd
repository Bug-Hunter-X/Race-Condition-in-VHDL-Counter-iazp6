process (clk) begin
  if rising_edge(clk) then
    if enable = '1' then
      count <= count + 1;
    end if;
  end if;
end process;