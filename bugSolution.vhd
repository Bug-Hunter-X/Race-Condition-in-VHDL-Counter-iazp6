process (clk) begin
  if rising_edge(clk) then
    sync_enable <= enable; --Synchronize the enable signal
  end if;
end process;

process (clk) begin
  if rising_edge(clk) then
    if sync_enable = '1' then  --Use synchronized enable
      count <= count + 1;
    end if;
  end if;
end process;