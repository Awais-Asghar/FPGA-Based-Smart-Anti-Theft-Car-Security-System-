module CarAntiTheftAlarmSystemTestbench;

    logic clock;
    logic systemReset;
    logic ignition;
    logic brake;
    logic hidden;
    logic driver;
    logic passenger;
    logic fuelPumpPower;
    logic statusIndicator;
    logic siren;

    CarAntiTheftAlarmSystem CATAST (
        .clock(clock),
        .systemReset(systemReset),
        .ignition(ignition),
        .brake(brake),
        .hidden(hidden),
        .driver(driver),
        .passenger(passenger),
        .fuelPumpPower(fuelPumpPower),
        .statusIndicator(statusIndicator),
        .siren(siren)
    );

    initial begin
        clock = 1'b0;
        systemReset = 1'b1;
        ignition = 1'b0;
        brake = 1'b0;
        hidden = 1'b0;
        driver = 1'b1;
        passenger = 1'b1;
        #8 systemReset = 1'b0;
        #5 ignition = 1'b1;
        #5 brake = 1'b1;
        hidden = 1'b1;
        #12 brake = 1'b0;
        hidden = 1'b0;
        #12 ignition = 1'b0;
        #12 driver = 1'b0;
        #12 passenger = 1'b0;
        #37 driver = 1'b1;
        passenger = 1'b1;
        #228 driver = 1'b0;
        #148 driver = 1'b1;
        #112 ignition = 1'b1;
        #12 ignition = 1'b0;
        #12 driver = 1'b0;
        #12 passenger = 1'b0;
        #6 driver = 1'b1;
        passenger = 1'b1;
        #167 passenger = 1'b0;
        #12 ignition = 1'b1;
    end

    initial forever #4 clock = ~clock;

    initial #1000 $finish;

endmodule
