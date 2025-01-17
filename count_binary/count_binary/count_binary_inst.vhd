	component count_binary is
		port (
			sys_sdram_pll_0_ref_clk_clk        : in    std_logic                     := 'X';             -- clk
			sys_sdram_pll_0_ref_reset_reset    : in    std_logic                     := 'X';             -- reset
			display_external_connection_export : out   std_logic_vector(15 downto 0);                    -- export
			switch_external_connection_export  : in    std_logic_vector(7 downto 0)  := (others => 'X'); -- export
			led_external_connection_export     : out   std_logic_vector(7 downto 0);                     -- export
			new_sdram_controller_0_wire_addr   : out   std_logic_vector(12 downto 0);                    -- addr
			new_sdram_controller_0_wire_ba     : out   std_logic_vector(1 downto 0);                     -- ba
			new_sdram_controller_0_wire_cas_n  : out   std_logic;                                        -- cas_n
			new_sdram_controller_0_wire_cke    : out   std_logic;                                        -- cke
			new_sdram_controller_0_wire_cs_n   : out   std_logic;                                        -- cs_n
			new_sdram_controller_0_wire_dq     : inout std_logic_vector(15 downto 0) := (others => 'X'); -- dq
			new_sdram_controller_0_wire_dqm    : out   std_logic_vector(1 downto 0);                     -- dqm
			new_sdram_controller_0_wire_ras_n  : out   std_logic;                                        -- ras_n
			new_sdram_controller_0_wire_we_n   : out   std_logic                                         -- we_n
		);
	end component count_binary;

	u0 : component count_binary
		port map (
			sys_sdram_pll_0_ref_clk_clk        => CONNECTED_TO_sys_sdram_pll_0_ref_clk_clk,        --     sys_sdram_pll_0_ref_clk.clk
			sys_sdram_pll_0_ref_reset_reset    => CONNECTED_TO_sys_sdram_pll_0_ref_reset_reset,    --   sys_sdram_pll_0_ref_reset.reset
			display_external_connection_export => CONNECTED_TO_display_external_connection_export, -- display_external_connection.export
			switch_external_connection_export  => CONNECTED_TO_switch_external_connection_export,  --  switch_external_connection.export
			led_external_connection_export     => CONNECTED_TO_led_external_connection_export,     --     led_external_connection.export
			new_sdram_controller_0_wire_addr   => CONNECTED_TO_new_sdram_controller_0_wire_addr,   -- new_sdram_controller_0_wire.addr
			new_sdram_controller_0_wire_ba     => CONNECTED_TO_new_sdram_controller_0_wire_ba,     --                            .ba
			new_sdram_controller_0_wire_cas_n  => CONNECTED_TO_new_sdram_controller_0_wire_cas_n,  --                            .cas_n
			new_sdram_controller_0_wire_cke    => CONNECTED_TO_new_sdram_controller_0_wire_cke,    --                            .cke
			new_sdram_controller_0_wire_cs_n   => CONNECTED_TO_new_sdram_controller_0_wire_cs_n,   --                            .cs_n
			new_sdram_controller_0_wire_dq     => CONNECTED_TO_new_sdram_controller_0_wire_dq,     --                            .dq
			new_sdram_controller_0_wire_dqm    => CONNECTED_TO_new_sdram_controller_0_wire_dqm,    --                            .dqm
			new_sdram_controller_0_wire_ras_n  => CONNECTED_TO_new_sdram_controller_0_wire_ras_n,  --                            .ras_n
			new_sdram_controller_0_wire_we_n   => CONNECTED_TO_new_sdram_controller_0_wire_we_n    --                            .we_n
		);

