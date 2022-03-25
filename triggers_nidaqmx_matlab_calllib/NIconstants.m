%******************************************************************************
%*** NI-DAQmx Attributes ******************************************************
%******************************************************************************
% copyright National Instruments
% adapted for use in matlab, by Jens Roesner, jan/25/2005

%********** Calibration Info Attributes **********
niconst.DAQmx_SelfCal_Supported = hex2dec('1860'); % Indicates whether the device supports self calibration.
niconst.DAQmx_SelfCal_LastTemp = hex2dec('1864'); % Indicates in degrees Celsius the temperature of the device at the time of the last self calibration. Compare this temperature to the current onboard temperature to determine if you should perform another calibration.
niconst.DAQmx_ExtCal_RecommendedInterval = hex2dec('1868'); % Indicates in months the National Instruments recommended interval between each external calibration of the device.
niconst.DAQmx_ExtCal_LastTemp = hex2dec('1867'); % Indicates in degrees Celsius the temperature of the device at the time of the last external calibration. Compare this temperature to the current onboard temperature to determine if you should perform another calibration.
niconst.DAQmx_Cal_UserDefinedInfo = hex2dec('1861'); % Specifies a string that contains arbitrary, user-defined information. This number of characters in this string can be no more than Max Size.
niconst.DAQmx_Cal_UserDefinedInfo_MaxSize = hex2dec('191C'); % Indicates the maximum length in characters of Information.
niconst.DAQmx_Cal_DevTemp = hex2dec('223B'); % Indicates in degrees Celsius the current temperature of the device.

%********** Channel Attributes **********
niconst.DAQmx_ChanType = hex2dec('187F'); % Indicates the type of the virtual channel.
niconst.DAQmx_PhysicalChanName = hex2dec('18F5'); % Indicates the name of the physical channel upon which this virtual channel is based.
niconst.DAQmx_ChanDescr = hex2dec('1926'); % Specifies a user-defined description for the channel.
niconst.DAQmx_AI_Max = hex2dec('17DD'); % Specifies the maximum value you expect to measure. This value is in the units you specify with a units property. When you query this property, it returns the coerced maximum value that the device can measure with the current settings.
niconst.DAQmx_AI_Min = hex2dec('17DE'); % Specifies the minimum value you expect to measure. This value is in the units you specify with a units property.When you query this property, it returns the coerced minimum value that the device can measure with the current settings.
niconst.DAQmx_AI_CustomScaleName = hex2dec('17E0'); % Specifies the name of a custom scale for the channel.
niconst.DAQmx_AI_MeasType = hex2dec('0695'); % Indicates the measurement to take with the analog input channel and in some cases, such as for temperature measurements, the sensor to use.
niconst.DAQmx_AI_Voltage_Units = hex2dec('1094'); % Specifies the units to use to return voltage measurements from the channel.
niconst.DAQmx_AI_Temp_Units = hex2dec('1033'); % Specifies the units to use to return temperature measurements from the channel.
niconst.DAQmx_AI_Thrmcpl_Type = hex2dec('1050'); % Specifies the type of thermocouple connected to the channel. Thermocouple types differ in composition and measurement range.
niconst.DAQmx_AI_Thrmcpl_CJCSrc = hex2dec('1035'); % Indicates the source of cold-junction compensation.
niconst.DAQmx_AI_Thrmcpl_CJCVal = hex2dec('1036'); % Specifies the temperature of the cold junction if CJC Source is niconst.DAQmx_Val_ConstVal. Specify this value in the units of the measurement.
niconst.DAQmx_AI_Thrmcpl_CJCChan = hex2dec('1034'); % Indicates the channel that acquires the temperature of the cold junction if CJC Source is niconst.DAQmx_Val_Chan. If the channel is a temperature channel, NI-DAQmx acquires the temperature in the correct units. Other channel types, such as a resistance channel with a custom sensor, must use a custom scale to scale values to degrees Celsius.
niconst.DAQmx_AI_RTD_Type = hex2dec('1032'); % Specifies the type of RTD connected to the channel.
niconst.DAQmx_AI_RTD_R0 = hex2dec('1030'); % Specifies in ohms the sensor resistance at 0 deg C. The Callendar-Van Dusen equation requires this value. Refer to the sensor documentation to determine this value.
niconst.DAQmx_AI_RTD_A = hex2dec('1010'); % Specifies the 'A' constant of the Callendar-Van Dusen equation. NI-DAQmx requires this value when you use a custom RTD.
niconst.DAQmx_AI_RTD_B = hex2dec('1011'); % Specifies the 'B' constant of the Callendar-Van Dusen equation. NI-DAQmx requires this value when you use a custom RTD.
niconst.DAQmx_AI_RTD_C = hex2dec('1013'); % Specifies the 'C' constant of the Callendar-Van Dusen equation. NI-DAQmx requires this value when you use a custom RTD.
niconst.DAQmx_AI_Thrmstr_A = hex2dec('18C9'); % Specifies the 'A' constant of the Steinhart-Hart thermistor equation.
niconst.DAQmx_AI_Thrmstr_B = hex2dec('18CB'); % Specifies the 'B' constant of the Steinhart-Hart thermistor equation.
niconst.DAQmx_AI_Thrmstr_C = hex2dec('18CA'); % Specifies the 'C' constant of the Steinhart-Hart thermistor equation.
niconst.DAQmx_AI_Thrmstr_R1 = hex2dec('1061'); % Specifies in ohms the value of the reference resistor if you use voltage excitation. NI-DAQmx ignores this value for current excitation.
niconst.DAQmx_AI_ForceReadFromChan = hex2dec('18F8'); % Specifies whether to read from the channel if it is a cold-junction compensation channel. By default, an NI-DAQmx Read function does not return data from cold-junction compensation channels.Setting this property to TRUE forces read operations to return the cold-junction compensation channel data with the other channels in the task.
niconst.DAQmx_AI_Current_Units = hex2dec('0701'); % Specifies the units to use to return current measurements from the channel.
niconst.DAQmx_AI_Strain_Units = hex2dec('0981'); % Specifies the units to use to return strain measurements from the channel.
niconst.DAQmx_AI_StrainGage_GageFactor = hex2dec('0994'); % Specifies the sensitivity of the strain gage.Gage factor relates the change in electrical resistance to the change in strain. Refer to the sensor documentation for this value.
niconst.DAQmx_AI_StrainGage_PoissonRatio = hex2dec('0998'); % Specifies the ratio of lateral strain to axial strain in the material you are measuring.
niconst.DAQmx_AI_StrainGage_Cfg = hex2dec('0982'); % Specifies the bridge configuration of the strain gages.
niconst.DAQmx_AI_Resistance_Units = hex2dec('0955'); % Specifies the units to use to return resistance measurements.
niconst.DAQmx_AI_Freq_Units = hex2dec('0806'); % Specifies the units to use to return frequency measurements from the channel.
niconst.DAQmx_AI_Freq_ThreshVoltage = hex2dec('0815'); % Specifies the voltage level at which to recognize waveform repetitions. You should select a voltage level that occurs only once within the entire period of a waveform. You also can select a voltage that occurs only once while the voltage rises or falls.
niconst.DAQmx_AI_Freq_Hyst = hex2dec('0814'); % Specifies in volts a window below Threshold Level. The input voltage must pass below Threshold Level minus this value before NI-DAQmx recognizes a waveform repetition at Threshold Level. Hysteresis can improve the measurement accuracy when the signal contains noise or jitter.
niconst.DAQmx_AI_LVDT_Units = hex2dec('0910'); % Specifies the units to use to return linear position measurements from the channel.
niconst.DAQmx_AI_LVDT_Sensitivity = hex2dec('0939'); % Specifies the sensitivity of the LVDT. This value is in the units you specify with Sensitivity Units. Refer to the sensor documentation to determine this value.
niconst.DAQmx_AI_LVDT_SensitivityUnits = hex2dec('219A'); % Specifies the units of Sensitivity.
niconst.DAQmx_AI_RVDT_Units = hex2dec('0877'); % Specifies the units to use to return angular position measurements from the channel.
niconst.DAQmx_AI_RVDT_Sensitivity = hex2dec('0903'); % Specifies the sensitivity of the RVDT. This value is in the units you specify with Sensitivity Units. Refer to the sensor documentation to determine this value.
niconst.DAQmx_AI_RVDT_SensitivityUnits = hex2dec('219B'); % Specifies the units of Sensitivity.
niconst.DAQmx_AI_SoundPressure_MaxSoundPressureLvl = hex2dec('223A'); % Specifies the maximum instantaneous sound pressure level you expect to measure. This value is in decibels, referenced to 20 micropascals. NI-DAQmx uses the maximum sound pressure level to calculate values in pascals for Maximum Value and Minimum Value for the channel.
niconst.DAQmx_AI_SoundPressure_Units = hex2dec('1528'); % Specifies the units to use to return sound pressure measurements from the channel.
niconst.DAQmx_AI_Microphone_Sensitivity = hex2dec('1536'); % Specifies the sensitivity of the microphone. This value is in mV/Pa. Refer to the sensor documentation to determine this value.
niconst.DAQmx_AI_Accel_Units = hex2dec('0673'); % Specifies the units to use to return acceleration measurements from the channel.
niconst.DAQmx_AI_Accel_Sensitivity = hex2dec('0692'); % Specifies the sensitivity of the accelerometer. This value is in the units you specify with Sensitivity Units. Refer to the sensor documentation to determine this value.
niconst.DAQmx_AI_Accel_SensitivityUnits = hex2dec('219C'); % Specifies the units of Sensitivity.
niconst.DAQmx_AI_TEDS_Units = hex2dec('21E0'); % Indicates the units defined by TEDS information associated with the channel.
niconst.DAQmx_AI_Coupling = hex2dec('0064'); % Specifies the coupling for the channel.
niconst.DAQmx_AI_Impedance = hex2dec('0062'); % Specifies the input impedance of the channel.
niconst.DAQmx_AI_TermCfg = hex2dec('1097'); % Specifies the terminal configuration for the channel.
niconst.DAQmx_AI_InputSrc = hex2dec('2198'); % Specifies the source of the channel. You can use the signal from the I/O connector or one of several calibration signals. Certain devices have a single calibration signal bus. For these devices, you must specify the same calibration signal for all channels you connect to a calibration signal.
niconst.DAQmx_AI_ResistanceCfg = hex2dec('1881'); % Specifies the resistance configuration for the channel. NI-DAQmx uses this value for any resistance-based measurements, including temperature measurement using a thermistor or RTD.
niconst.DAQmx_AI_LeadWireResistance = hex2dec('17EE'); % Specifies in ohms the resistance of the wires that lead to the sensor.
niconst.DAQmx_AI_Bridge_Cfg = hex2dec('0087'); % Specifies the type of Wheatstone bridge that the sensor is.
niconst.DAQmx_AI_Bridge_NomResistance = hex2dec('17EC'); % Specifies in ohms the resistance across each arm of the bridge in an unloaded position.
niconst.DAQmx_AI_Bridge_InitialVoltage = hex2dec('17ED'); % Specifies in volts the output voltage of the bridge in the unloaded condition. NI-DAQmx subtracts this value from any measurements before applying scaling equations.
niconst.DAQmx_AI_Bridge_ShuntCal_Enable = hex2dec('0094'); % Specifies whether to enable a shunt calibration switch. Use Shunt Cal Select to select the switch(es) to enable.
niconst.DAQmx_AI_Bridge_ShuntCal_Select = hex2dec('21D5'); % Specifies which shunt calibration switch(es) to enable.Use Shunt Cal Enable to enable the switch(es) you specify with this property.
niconst.DAQmx_AI_Bridge_ShuntCal_GainAdjust = hex2dec('193F'); % Specifies the result of a shunt calibration. NI-DAQmx multiplies data read from the channel by the value of this property. This value should be close to 1.0.
niconst.DAQmx_AI_Bridge_Balance_CoarsePot = hex2dec('17F1'); % Specifies by how much to compensate for offset in the signal. This value can be between 0 and 127.
niconst.DAQmx_AI_Bridge_Balance_FinePot = hex2dec('18F4'); % Specifies by how much to compensate for offset in the signal. This value can be between 0 and 4095.
niconst.DAQmx_AI_CurrentShunt_Loc = hex2dec('17F2'); % Specifies the shunt resistor location for current measurements.
niconst.DAQmx_AI_CurrentShunt_Resistance = hex2dec('17F3'); % Specifies in ohms the external shunt resistance for current measurements.
niconst.DAQmx_AI_Excit_Src = hex2dec('17F4'); % Specifies the source of excitation.
niconst.DAQmx_AI_Excit_Val = hex2dec('17F5'); % Specifies the amount of excitation that the sensor requires. If Voltage or Current isniconst.DAQmx_Val_Voltage, this value is in volts. If Voltage or Current isniconst.DAQmx_Val_Current, this value is in amperes.
niconst.DAQmx_AI_Excit_UseForScaling = hex2dec('17FC'); % Specifies if NI-DAQmx divides the measurement by the excitation. You should typically set this property to TRUE for ratiometric transducers. If you set this property to TRUE, set Maximum Value and Minimum Value to reflect the scaling.
niconst.DAQmx_AI_Excit_UseMultiplexed = hex2dec('2180'); % Specifies if the SCXI-1122 multiplexes the excitation to the upper half of the channels as it advances through the scan list.
niconst.DAQmx_AI_Excit_ActualVal = hex2dec('1883'); % Specifies the actual amount of excitation supplied by an internal excitation source.If you read an internal excitation source more precisely with an external device, set this property to the value you read.NI-DAQmx ignores this value for external excitation.
niconst.DAQmx_AI_Excit_DCorAC = hex2dec('17FB'); % Specifies if the excitation supply is DC or AC.
niconst.DAQmx_AI_Excit_VoltageOrCurrent = hex2dec('17F6'); % Specifies if the channel uses current or voltage excitation.
niconst.DAQmx_AI_ACExcit_Freq = hex2dec('0101'); % Specifies the AC excitation frequency in Hertz.
niconst.DAQmx_AI_ACExcit_SyncEnable = hex2dec('0102'); % Specifies whether to synchronize the AC excitation source of the channel to that of another channel. Synchronize the excitation sources of multiple channels to use multichannel sensors. Set this property to FALSE for the master channel and to TRUE for the slave channels.
niconst.DAQmx_AI_ACExcit_WireMode = hex2dec('18CD'); % Specifies the number of leads on the LVDT or RVDT. Some sensors require you to tie leads together to create a four- or five- wire sensor. Refer to the sensor documentation for more information.
niconst.DAQmx_AI_Atten = hex2dec('1801'); % Specifies the amount of attenuation to use.
niconst.DAQmx_AI_Lowpass_Enable = hex2dec('1802'); % Specifies whether to enable the lowpass filter of the channel.
niconst.DAQmx_AI_Lowpass_CutoffFreq = hex2dec('1803'); % Specifies the frequency in Hertz that corresponds to the -3dB cutoff of the filter.
niconst.DAQmx_AI_Lowpass_SwitchCap_ClkSrc = hex2dec('1884'); % Specifies the source of the filter clock. If you need a higher resolution for the filter, you can supply an external clock to increase the resolution. Refer to the SCXI-1141/1142/1143 User Manual for more information.
niconst.DAQmx_AI_Lowpass_SwitchCap_ExtClkFreq = hex2dec('1885'); % Specifies the frequency of the external clock when you set Clock Source to niconst.DAQmx_Val_External.NI-DAQmx uses this frequency to set the pre- and post- filters on the SCXI-1141, SCXI-1142, and SCXI-1143. On those devices, NI-DAQmx determines the filter cutoff by using the equation f/(100*n), where f is the external frequency, and n is the external clock divisor. Refer to the SCXI-1141/1142/1143 User Manual for more...
niconst.DAQmx_AI_Lowpass_SwitchCap_ExtClkDiv = hex2dec('1886'); % Specifies the divisor for the external clock when you set Clock Source to niconst.DAQmx_Val_External. On the SCXI-1141, SCXI-1142, and SCXI-1143, NI-DAQmx determines the filter cutoff by using the equation f/(100*n), where f is the external frequency, and n is the external clock divisor. Refer to the SCXI-1141/1142/1143 User Manual for more information.
niconst.DAQmx_AI_Lowpass_SwitchCap_OutClkDiv = hex2dec('1887'); % Specifies the divisor for the output clock.NI-DAQmx uses the cutoff frequency to determine the output clock frequency. Refer to the SCXI-1141/1142/1143 User Manual for more information.
niconst.DAQmx_AI_ResolutionUnits = hex2dec('1764'); % Indicates the units of Resolution Value.
niconst.DAQmx_AI_Resolution = hex2dec('1765'); % Indicates the resolution of the analog-to-digital converter of the channel. This value is in the units you specify with Resolution Units.
niconst.DAQmx_AI_Dither_Enable = hex2dec('0068'); % Specifies whether to enable dithering.Dithering adds Gaussian noise to the input signal. You can use dithering to achieve higher resolution measurements by over sampling the input signal and averaging the results.
niconst.DAQmx_AI_Rng_High = hex2dec('1815'); % Specifies the upper limit of the input range of the device. This value is in the native units of the device. On E Series devices, for example, the native units is volts.
niconst.DAQmx_AI_Rng_Low = hex2dec('1816'); % Specifies the lower limit of the input range of the device. This value is in the native units of the device. On E Series devices, for example, the native units is volts.
niconst.DAQmx_AI_Gain = hex2dec('1818'); % Specifies a gain factor to apply to the channel.
niconst.DAQmx_AI_SampAndHold_Enable = hex2dec('181A'); % Specifies whether to enable the sample and hold circuitry of the device. When you disable sample and hold circuitry, a small voltage offset might be introduced into the signal.You can eliminate this offset by using Auto Zero Mode to perform an auto zero on the channel.
niconst.DAQmx_AI_AutoZeroMode = hex2dec('1760'); % Specifies when to measure ground. NI-DAQmx subtracts the measured ground voltage from every sample.
niconst.DAQmx_AI_DataXferMech = hex2dec('1821'); % Specifies the data transfer mode for the device.
niconst.DAQmx_AI_DataXferReqCond = hex2dec('188B'); % Specifies under what condition to transfer data from the onboard memory of the device to the buffer.
niconst.DAQmx_AI_MemMapEnable = hex2dec('188C'); % Specifies for NI-DAQmx to map hardware registers to the memory space of the customer process, if possible. Mapping to the memory space of the customer process increases performance. However, memory mapping can adversely affect the operation of the device and possibly result in a system crash if software in the process unintentionally accesses the mapped registers.
niconst.DAQmx_AI_DevScalingCoeff = hex2dec('1930'); % Indicates the coefficients of a polynomial equation that NI-DAQmx uses to scale values from the native format of the device to volts. Each element of the array corresponds to a term of the equation. For example, if index two of the array is 4, the third term of the equation is 4x^2. Scaling coefficients do not account for any custom scales or sensors contained by the channel.
niconst.DAQmx_AI_EnhancedAliasRejectionEnable = hex2dec('2294'); % Specifies whether to enable enhanced alias rejection. By default, enhanced alias rejection is enabled on supported devices. Leave this property set to the default value for most applications.
niconst.DAQmx_AO_Max = hex2dec('1186'); % Specifies the maximum value you expect to generate. The value is in the units you specify with a units property. If you try to write a value larger than the maximum value, NI-DAQmx generates an error. NI-DAQmx might coerce this value to a smaller value if other task settings restrict the device from generating the desired maximum.
niconst.DAQmx_AO_Min = hex2dec('1187'); % Specifies the minimum value you expect to generate. The value is in the units you specify with a units property. If you try to write a value smaller than the minimum value, NI-DAQmx generates an error. NI-DAQmx might coerce this value to a larger value if other task settings restrict the device from generating the desired minimum.
niconst.DAQmx_AO_CustomScaleName = hex2dec('1188'); % Specifies the name of a custom scale for the channel.
niconst.DAQmx_AO_OutputType = hex2dec('1108'); % Indicates whether the channel generates voltage or current.
niconst.DAQmx_AO_Voltage_Units = hex2dec('1184'); % Specifies in what units to generate voltage on the channel. Write data to the channel in the units you select.
niconst.DAQmx_AO_Current_Units = hex2dec('1109'); % Specifies in what units to generate current on the channel. Write data to the channel is in the units you select.
niconst.DAQmx_AO_OutputImpedance = hex2dec('1490'); % Specifies in ohms the impedance of the analog output stage of the device.
niconst.DAQmx_AO_LoadImpedance = hex2dec('0121'); % Specifies in ohms the load impedance connected to the analog output channel.
niconst.DAQmx_AO_IdleOutputBehavior = hex2dec('2240'); % Specifies the state of the channel when no generation is in progress.
niconst.DAQmx_AO_TermCfg = hex2dec('188E'); % Specifies the terminal configuration of the channel.
niconst.DAQmx_AO_ResolutionUnits = hex2dec('182B'); % Specifies the units of Resolution Value.
niconst.DAQmx_AO_Resolution = hex2dec('182C'); % Indicates the resolution of the digital-to-analog converter of the channel. This value is in the units you specify with Resolution Units.
niconst.DAQmx_AO_DAC_Rng_High = hex2dec('182E'); % Specifies the upper limit of the output range of the device. This value is in the native units of the device. On E Series devices, for example, the native units is volts.
niconst.DAQmx_AO_DAC_Rng_Low = hex2dec('182D'); % Specifies the lower limit of the output range of the device. This value is in the native units of the device. On E Series devices, for example, the native units is volts.
niconst.DAQmx_AO_DAC_Ref_ConnToGnd = hex2dec('0130'); % Specifies whether to ground the internal DAC reference. Grounding the internal DAC reference has the effect of grounding all analog output channels and stopping waveform generation across all analog output channels regardless of whether the channels belong to the current task. You can ground the internal DAC reference only when Source is niconst.DAQmx_Val_Internal and Allow Connecting DAC Reference to Ground at Runtime is...
niconst.DAQmx_AO_DAC_Ref_AllowConnToGnd = hex2dec('1830'); % Specifies whether to allow grounding the internal DAC reference at run time. You must set this property to TRUE and set Source to niconst.DAQmx_Val_Internal before you can set Connect DAC Reference to Ground to TRUE.
niconst.DAQmx_AO_DAC_Ref_Src = hex2dec('0132'); % Specifies the source of the DAC reference voltage. The value of this voltage source determines the full-scale value of the DAC.
niconst.DAQmx_AO_DAC_Ref_ExtSrc = hex2dec('2252'); % Specifies the source of the DAC reference voltage if Source is niconst.DAQmx_Val_External.
niconst.DAQmx_AO_DAC_Ref_Val = hex2dec('1832'); % Specifies in volts the value of the DAC reference voltage. This voltage determines the full-scale range of the DAC. Smaller reference voltages result in smaller ranges, but increased resolution.
niconst.DAQmx_AO_DAC_Offset_Src = hex2dec('2253'); % Specifies the source of the DAC offset voltage. The value of this voltage source determines the full-scale value of the DAC.
niconst.DAQmx_AO_DAC_Offset_ExtSrc = hex2dec('2254'); % Specifies the source of the DAC offset voltage if Source is niconst.DAQmx_Val_External.
niconst.DAQmx_AO_DAC_Offset_Val = hex2dec('2255'); % Specifies in volts the value of the DAC offset voltage.
niconst.DAQmx_AO_ReglitchEnable = hex2dec('0133'); % Specifies whether to enable reglitching.The output of a DAC normally glitches whenever the DAC is updated with a new value. The amount of glitching differs from code to code and is generally largest at major code transitions.Reglitching generates uniform glitch energy at each code transition and provides for more uniform glitches.Uniform glitch energy makes it easier to filter out the noise introduced from g...
niconst.DAQmx_AO_Gain = hex2dec('0118'); % Specifies in decibels the gain factor to apply to the channel.
niconst.DAQmx_AO_UseOnlyOnBrdMem = hex2dec('183A'); % Specifies whether to write samples directly to the onboard memory of the device, bypassing the memory buffer. Generally, you cannot update onboard memory after you start the task. Onboard memory includes data FIFOs.
niconst.DAQmx_AO_DataXferMech = hex2dec('0134'); % Specifies the data transfer mode for the device.
niconst.DAQmx_AO_DataXferReqCond = hex2dec('183C'); % Specifies under what condition to transfer data from the buffer to the onboard memory of the device.
niconst.DAQmx_AO_MemMapEnable = hex2dec('188F'); % Specifies if NI-DAQmx maps hardware registers to the memory space of the customer process, if possible. Mapping to the memory space of the customer process increases performance. However, memory mapping can adversely affect the operation of the device and possibly result in a system crash if software in the process unintentionally accesses the mapped registers.
niconst.DAQmx_AO_DevScalingCoeff = hex2dec('1931'); % Indicates the coefficients of a linear equation that NI-DAQmx uses to scale values from a voltage to the native format of the device.Each element of the array corresponds to a term of the equation. For example, if index two of the array is 4, the third term of the equation is 4x^2.Scaling coefficients do not account for any custom scales that may be applied to the channel.
niconst.DAQmx_DI_InvertLines = hex2dec('0793'); % Specifies whether to invert the lines in the channel. If you set this property to TRUE, the lines are at high logic when off and at low logic when on.
niconst.DAQmx_DI_NumLines = hex2dec('2178'); % Indicates the number of digital lines in the channel.
niconst.DAQmx_DI_DigFltr_Enable = hex2dec('21D6'); % Specifies whether to enable the digital filter for the line(s) or port(s). You can enable the filter on a line-by-line basis. You do not have to enable the filter for all lines in a channel.
niconst.DAQmx_DI_DigFltr_MinPulseWidth = hex2dec('21D7'); % Specifies in seconds the minimum pulse width the filter recognizes as a valid high or low state transition.
niconst.DAQmx_DI_Tristate = hex2dec('1890'); % Specifies whether to tristate the lines in the channel. If you set this property to TRUE, NI-DAQmx tristates the lines in the channel. If you set this property to FALSE, NI-DAQmx does not modify the configuration of the lines even if the lines were previously tristated. Set this property to FALSE to read lines in other tasks or to read output-only lines.
niconst.DAQmx_DI_DataXferMech = hex2dec('2263'); % Specifies the data transfer mode for the device.
niconst.DAQmx_DI_DataXferReqCond = hex2dec('2264'); % Specifies under what condition to transfer data from the onboard memory of the device to the buffer.
niconst.DAQmx_DO_InvertLines = hex2dec('1133'); % Specifies whether to invert the lines in the channel. If you set this property to TRUE, the lines are at high logic when off and at low logic when on.
niconst.DAQmx_DO_NumLines = hex2dec('2179'); % Indicates the number of digital lines in the channel.
niconst.DAQmx_DO_Tristate = hex2dec('18F3'); % Specifies whether to stop driving the channel and set it to a Hi-Z state.
niconst.DAQmx_DO_UseOnlyOnBrdMem = hex2dec('2265'); % Specifies whether to write samples directly to the onboard memory of the device, bypassing the memory buffer. Generally, you cannot update onboard memory after you start the task. Onboard memory includes data FIFOs.
niconst.DAQmx_DO_DataXferMech = hex2dec('2266'); % Specifies the data transfer mode for the device.
niconst.DAQmx_DO_DataXferReqCond = hex2dec('2267'); % Specifies under what condition to transfer data from the buffer to the onboard memory of the device.
niconst.DAQmx_CI_Max = hex2dec('189C'); % Specifies the maximum value you expect to measure. This value is in the units you specify with a units property. When you query this property, it returns the coerced maximum value that the hardware can measure with the current settings.
niconst.DAQmx_CI_Min = hex2dec('189D'); % Specifies the minimum value you expect to measure. This value is in the units you specify with a units property. When you query this property, it returns the coerced minimum value that the hardware can measure with the current settings.
niconst.DAQmx_CI_CustomScaleName = hex2dec('189E'); % Specifies the name of a custom scale for the channel.
niconst.DAQmx_CI_MeasType = hex2dec('18A0'); % Indicates the measurement to take with the channel.
niconst.DAQmx_CI_Freq_Units = hex2dec('18A1'); % Specifies the units to use to return frequency measurements.
niconst.DAQmx_CI_Freq_Term = hex2dec('18A2'); % Specifies the input terminal of the signal to measure.
niconst.DAQmx_CI_Freq_StartingEdge = hex2dec('0799'); % Specifies between which edges to measure the frequency of the signal.
niconst.DAQmx_CI_Freq_MeasMeth = hex2dec('0144'); % Specifies the method to use to measure the frequency of the signal.
niconst.DAQmx_CI_Freq_MeasTime = hex2dec('0145'); % Specifies in seconds the length of time to measure the frequency of the signal if Method is niconst.DAQmx_Val_HighFreq2Ctr. Measurement accuracy increases with increased measurement time and with increased signal frequency. If you measure a high-frequency signal for too long, however, the count register could roll over, which results in an incorrect measurement.
niconst.DAQmx_CI_Freq_Div = hex2dec('0147'); % Specifies the value by which to divide the input signal ifMethod is niconst.DAQmx_Val_LargeRng2Ctr. The larger the divisor, the more accurate the measurement. However, too large a value could cause the count register to roll over, which results in an incorrect measurement.
niconst.DAQmx_CI_Freq_DigFltr_Enable = hex2dec('21E7'); % Specifies whether to apply the pulse width filter to the signal.
niconst.DAQmx_CI_Freq_DigFltr_MinPulseWidth = hex2dec('21E8'); % Specifies in seconds the minimum pulse width the filter recognizes.
niconst.DAQmx_CI_Freq_DigFltr_TimebaseSrc = hex2dec('21E9'); % Specifies the input terminal of the signal to use as the timebase of the pulse width filter.
niconst.DAQmx_CI_Freq_DigFltr_TimebaseRate = hex2dec('21EA'); % Specifies in hertz the rate of the pulse width filter timebase. NI-DAQmx uses this value to compute settings for the filter.
niconst.DAQmx_CI_Freq_DigSync_Enable = hex2dec('21EB'); % Specifies whether to synchronize recognition of transitions in the signal to the internal timebase of the device.
niconst.DAQmx_CI_Period_Units = hex2dec('18A3'); % Specifies the unit to use to return period measurements.
niconst.DAQmx_CI_Period_Term = hex2dec('18A4'); % Specifies the input terminal of the signal to measure.
niconst.DAQmx_CI_Period_StartingEdge = hex2dec('0852'); % Specifies between which edges to measure the period of the signal.
niconst.DAQmx_CI_Period_MeasMeth = hex2dec('192C'); % Specifies the method to use to measure the period of the signal.
niconst.DAQmx_CI_Period_MeasTime = hex2dec('192D'); % Specifies in seconds the length of time to measure the period of the signal if Method is niconst.DAQmx_Val_HighFreq2Ctr. Measurement accuracy increases with increased measurement time and with increased signal frequency. If you measure a high-frequency signal for too long, however, the count register could roll over, which results in an incorrect measurement.
niconst.DAQmx_CI_Period_Div = hex2dec('192E'); % Specifies the value by which to divide the input signal if Method is niconst.DAQmx_Val_LargeRng2Ctr. The larger the divisor, the more accurate the measurement. However, too large a value could cause the count register to roll over, which results in an incorrect measurement.
niconst.DAQmx_CI_Period_DigFltr_Enable = hex2dec('21EC'); % Specifies whether to apply the pulse width filter to the signal.
niconst.DAQmx_CI_Period_DigFltr_MinPulseWidth = hex2dec('21ED'); % Specifies in seconds the minimum pulse width the filter recognizes.
niconst.DAQmx_CI_Period_DigFltr_TimebaseSrc = hex2dec('21EE'); % Specifies the input terminal of the signal to use as the timebase of the pulse width filter.
niconst.DAQmx_CI_Period_DigFltr_TimebaseRate = hex2dec('21EF'); % Specifies in hertz the rate of the pulse width filter timebase. NI-DAQmx uses this value to compute settings for the filter.
niconst.DAQmx_CI_Period_DigSync_Enable = hex2dec('21F0'); % Specifies whether to synchronize recognition of transitions in the signal to the internal timebase of the device.
niconst.DAQmx_CI_CountEdges_Term = hex2dec('18C7'); % Specifies the input terminal of the signal to measure.
niconst.DAQmx_CI_CountEdges_Dir = hex2dec('0696'); % Specifies whether to increment or decrement the counter on each edge.
niconst.DAQmx_CI_CountEdges_DirTerm = hex2dec('21E1'); % Specifies the source terminal of the digital signal that controls the count direction if Direction is niconst.DAQmx_Val_ExtControlled.
niconst.DAQmx_CI_CountEdges_CountDir_DigFltr_Enable = hex2dec('21F1'); % Specifies whether to apply the pulse width filter to the signal.
niconst.DAQmx_CI_CountEdges_CountDir_DigFltr_MinPulseWidth = hex2dec('21F2'); % Specifies in seconds the minimum pulse width the filter recognizes.
niconst.DAQmx_CI_CountEdges_CountDir_DigFltr_TimebaseSrc = hex2dec('21F3'); % Specifies the input terminal of the signal to use as the timebase of the pulse width filter.
niconst.DAQmx_CI_CountEdges_CountDir_DigFltr_TimebaseRate = hex2dec('21F4'); % Specifies in hertz the rate of the pulse width filter timebase. NI-DAQmx uses this value to compute settings for the filter.
niconst.DAQmx_CI_CountEdges_CountDir_DigSync_Enable = hex2dec('21F5'); % Specifies whether to synchronize recognition of transitions in the signal to the internal timebase of the device.
niconst.DAQmx_CI_CountEdges_InitialCnt = hex2dec('0698'); % Specifies the starting value from which to count.
niconst.DAQmx_CI_CountEdges_ActiveEdge = hex2dec('0697'); % Specifies on which edges to increment or decrement the counter.
niconst.DAQmx_CI_CountEdges_DigFltr_Enable = hex2dec('21F6'); % Specifies whether to apply the pulse width filter to the signal.
niconst.DAQmx_CI_CountEdges_DigFltr_MinPulseWidth = hex2dec('21F7'); % Specifies in seconds the minimum pulse width the filter recognizes.
niconst.DAQmx_CI_CountEdges_DigFltr_TimebaseSrc = hex2dec('21F8'); % Specifies the input terminal of the signal to use as the timebase of the pulse width filter.
niconst.DAQmx_CI_CountEdges_DigFltr_TimebaseRate = hex2dec('21F9'); % Specifies in hertz the rate of the pulse width filter timebase. NI-DAQmx uses this value to compute settings for the filter.
niconst.DAQmx_CI_CountEdges_DigSync_Enable = hex2dec('21FA'); % Specifies whether to synchronize recognition of transitions in the signal to the internal timebase of the device.
niconst.DAQmx_CI_AngEncoder_Units = hex2dec('18A6'); % Specifies the units to use to return angular position measurements from the channel.
niconst.DAQmx_CI_AngEncoder_PulsesPerRev = hex2dec('0875'); % Specifies the number of pulses the encoder generates per revolution. This value is the number of pulses on either signal A or signal B, not the total number of pulses on both signal A and signal B.
niconst.DAQmx_CI_AngEncoder_InitialAngle = hex2dec('0881'); % Specifies the starting angle of the encoder. This value is in the units you specify with Units.
niconst.DAQmx_CI_LinEncoder_Units = hex2dec('18A9'); % Specifies the units to use to return linear encoder measurements from the channel.
niconst.DAQmx_CI_LinEncoder_DistPerPulse = hex2dec('0911'); % Specifies the distance to measure for each pulse the encoder generates on signal A or signal B. This value is in the units you specify with Units.
niconst.DAQmx_CI_LinEncoder_InitialPos = hex2dec('0915'); % Specifies the position of the encoder when the measurement begins. This value is in the units you specify with Units.
niconst.DAQmx_CI_Encoder_DecodingType = hex2dec('21E6'); % Specifies how to count and interpret the pulses the encoder generates on signal A and signal B. niconst.DAQmx_Val_X1, niconst.DAQmx_Val_X2, and niconst.DAQmx_Val_X4 are valid for quadrature encoders only. niconst.DAQmx_Val_TwoPulseCounting is valid for two-pulse encoders only.
niconst.DAQmx_CI_Encoder_AInputTerm = hex2dec('219D'); % Specifies the terminal to which signal A is connected.
niconst.DAQmx_CI_Encoder_AInput_DigFltr_Enable = hex2dec('21FB'); % Specifies whether to apply the pulse width filter to the signal.
niconst.DAQmx_CI_Encoder_AInput_DigFltr_MinPulseWidth = hex2dec('21FC'); % Specifies in seconds the minimum pulse width the filter recognizes.
niconst.DAQmx_CI_Encoder_AInput_DigFltr_TimebaseSrc = hex2dec('21FD'); % Specifies the input terminal of the signal to use as the timebase of the pulse width filter.
niconst.DAQmx_CI_Encoder_AInput_DigFltr_TimebaseRate = hex2dec('21FE'); % Specifies in hertz the rate of the pulse width filter timebase. NI-DAQmx uses this value to compute settings for the filter.
niconst.DAQmx_CI_Encoder_AInput_DigSync_Enable = hex2dec('21FF'); % Specifies whether to synchronize recognition of transitions in the signal to the internal timebase of the device.
niconst.DAQmx_CI_Encoder_BInputTerm = hex2dec('219E'); % Specifies the terminal to which signal B is connected.
niconst.DAQmx_CI_Encoder_BInput_DigFltr_Enable = hex2dec('2200'); % Specifies whether to apply the pulse width filter to the signal.
niconst.DAQmx_CI_Encoder_BInput_DigFltr_MinPulseWidth = hex2dec('2201'); % Specifies in seconds the minimum pulse width the filter recognizes.
niconst.DAQmx_CI_Encoder_BInput_DigFltr_TimebaseSrc = hex2dec('2202'); % Specifies the input terminal of the signal to use as the timebase of the pulse width filter.
niconst.DAQmx_CI_Encoder_BInput_DigFltr_TimebaseRate = hex2dec('2203'); % Specifies in hertz the rate of the pulse width filter timebase. NI-DAQmx uses this value to compute settings for the filter.
niconst.DAQmx_CI_Encoder_BInput_DigSync_Enable = hex2dec('2204'); % Specifies whether to synchronize recognition of transitions in the signal to the internal timebase of the device.
niconst.DAQmx_CI_Encoder_ZInputTerm = hex2dec('219F'); % Specifies the terminal to which signal Z is connected.
niconst.DAQmx_CI_Encoder_ZInput_DigFltr_Enable = hex2dec('2205'); % Specifies whether to apply the pulse width filter to the signal.
niconst.DAQmx_CI_Encoder_ZInput_DigFltr_MinPulseWidth = hex2dec('2206'); % Specifies in seconds the minimum pulse width the filter recognizes.
niconst.DAQmx_CI_Encoder_ZInput_DigFltr_TimebaseSrc = hex2dec('2207'); % Specifies the input terminal of the signal to use as the timebase of the pulse width filter.
niconst.DAQmx_CI_Encoder_ZInput_DigFltr_TimebaseRate = hex2dec('2208'); % Specifies in hertz the rate of the pulse width filter timebase. NI-DAQmx uses this value to compute settings for the filter.
niconst.DAQmx_CI_Encoder_ZInput_DigSync_Enable = hex2dec('2209'); % Specifies whether to synchronize recognition of transitions in the signal to the internal timebase of the device.
niconst.DAQmx_CI_Encoder_ZIndexEnable = hex2dec('0890'); % Specifies whether to use Z indexing for the channel.
niconst.DAQmx_CI_Encoder_ZIndexVal = hex2dec('0888'); % Specifies the value to which to reset the measurement when signal Z is high and signal A and signal B are at the states you specify with Z Index Phase. Specify this value in the units of the measurement.
niconst.DAQmx_CI_Encoder_ZIndexPhase = hex2dec('0889'); % Specifies the states at which signal A and signal B must be while signal Z is high for NI-DAQmx to reset the measurement. If signal Z is never high while signal A and signal B are high, for example, you must choose a phase other than niconst.DAQmx_Val_AHighBHigh.
niconst.DAQmx_CI_PulseWidth_Units = hex2dec('0823'); % Specifies the units to use to return pulse width measurements.
niconst.DAQmx_CI_PulseWidth_Term = hex2dec('18AA'); % Specifies the input terminal of the signal to measure.
niconst.DAQmx_CI_PulseWidth_StartingEdge = hex2dec('0825'); % Specifies on which edge of the input signal to begin each pulse width measurement.
niconst.DAQmx_CI_PulseWidth_DigFltr_Enable = hex2dec('220A'); % Specifies whether to apply the pulse width filter to the signal.
niconst.DAQmx_CI_PulseWidth_DigFltr_MinPulseWidth = hex2dec('220B'); % Specifies in seconds the minimum pulse width the filter recognizes.
niconst.DAQmx_CI_PulseWidth_DigFltr_TimebaseSrc = hex2dec('220C'); % Specifies the input terminal of the signal to use as the timebase of the pulse width filter.
niconst.DAQmx_CI_PulseWidth_DigFltr_TimebaseRate = hex2dec('220D'); % Specifies in hertz the rate of the pulse width filter timebase. NI-DAQmx uses this value to compute settings for the filter.
niconst.DAQmx_CI_PulseWidth_DigSync_Enable = hex2dec('220E'); % Specifies whether to synchronize recognition of transitions in the signal to the internal timebase of the device.
niconst.DAQmx_CI_TwoEdgeSep_Units = hex2dec('18AC'); % Specifies the units to use to return two-edge separation measurements from the channel.
niconst.DAQmx_CI_TwoEdgeSep_FirstTerm = hex2dec('18AD'); % Specifies the source terminal of the digital signal that starts each measurement.
niconst.DAQmx_CI_TwoEdgeSep_FirstEdge = hex2dec('0833'); % Specifies on which edge of the first signal to start each measurement.
niconst.DAQmx_CI_TwoEdgeSep_First_DigFltr_Enable = hex2dec('220F'); % Specifies whether to apply the pulse width filter to the signal.
niconst.DAQmx_CI_TwoEdgeSep_First_DigFltr_MinPulseWidth = hex2dec('2210'); % Specifies in seconds the minimum pulse width the filter recognizes.
niconst.DAQmx_CI_TwoEdgeSep_First_DigFltr_TimebaseSrc = hex2dec('2211'); % Specifies the input terminal of the signal to use as the timebase of the pulse width filter.
niconst.DAQmx_CI_TwoEdgeSep_First_DigFltr_TimebaseRate = hex2dec('2212'); % Specifies in hertz the rate of the pulse width filter timebase. NI-DAQmx uses this value to compute settings for the filter.
niconst.DAQmx_CI_TwoEdgeSep_First_DigSync_Enable = hex2dec('2213'); % Specifies whether to synchronize recognition of transitions in the signal to the internal timebase of the device.
niconst.DAQmx_CI_TwoEdgeSep_SecondTerm = hex2dec('18AE'); % Specifies the source terminal of the digital signal that stops each measurement.
niconst.DAQmx_CI_TwoEdgeSep_SecondEdge = hex2dec('0834'); % Specifies on which edge of the second signal to stop each measurement.
niconst.DAQmx_CI_TwoEdgeSep_Second_DigFltr_Enable = hex2dec('2214'); % Specifies whether to apply the pulse width filter to the signal.
niconst.DAQmx_CI_TwoEdgeSep_Second_DigFltr_MinPulseWidth = hex2dec('2215'); % Specifies in seconds the minimum pulse width the filter recognizes.
niconst.DAQmx_CI_TwoEdgeSep_Second_DigFltr_TimebaseSrc = hex2dec('2216'); % Specifies the input terminal of the signal to use as the timebase of the pulse width filter.
niconst.DAQmx_CI_TwoEdgeSep_Second_DigFltr_TimebaseRate = hex2dec('2217'); % Specifies in hertz the rate of the pulse width filter timebase. NI-DAQmx uses this value to compute settings for the filter.
niconst.DAQmx_CI_TwoEdgeSep_Second_DigSync_Enable = hex2dec('2218'); % Specifies whether to synchronize recognition of transitions in the signal to the internal timebase of the device.
niconst.DAQmx_CI_SemiPeriod_Units = hex2dec('18AF'); % Specifies the units to use to return semi-period measurements.
niconst.DAQmx_CI_SemiPeriod_Term = hex2dec('18B0'); % Specifies the input terminal of the signal to measure.
niconst.DAQmx_CI_SemiPeriod_DigFltr_Enable = hex2dec('2219'); % Specifies whether to apply the pulse width filter to the signal.
niconst.DAQmx_CI_SemiPeriod_DigFltr_MinPulseWidth = hex2dec('221A'); % Specifies in seconds the minimum pulse width the filter recognizes.
niconst.DAQmx_CI_SemiPeriod_DigFltr_TimebaseSrc = hex2dec('221B'); % Specifies the input terminal of the signal to use as the timebase of the pulse width filter.
niconst.DAQmx_CI_SemiPeriod_DigFltr_TimebaseRate = hex2dec('221C'); % Specifies in hertz the rate of the pulse width filter timebase. NI-DAQmx uses this value to compute settings for the filter.
niconst.DAQmx_CI_SemiPeriod_DigSync_Enable = hex2dec('221D'); % Specifies whether to synchronize recognition of transitions in the signal to the internal timebase of the device.
niconst.DAQmx_CI_CtrTimebaseSrc = hex2dec('0143'); % Specifies the terminal of the timebase to use for the counter.
niconst.DAQmx_CI_CtrTimebaseRate = hex2dec('18B2'); % Specifies in Hertz the frequency of the counter timebase. Specifying the rate of a counter timebase allows you to take measurements in terms of time or frequency rather than in ticks of the timebase. If you use an external timebase and do not specify the rate, you can take measurements only in terms of ticks of the timebase.
niconst.DAQmx_CI_CtrTimebaseActiveEdge = hex2dec('0142'); % Specifies whether a timebase cycle is from rising edge to rising edge or from falling edge to falling edge.
niconst.DAQmx_CI_CtrTimebase_DigFltr_Enable = hex2dec('2271'); % Specifies whether to apply the pulse width filter to the signal.
niconst.DAQmx_CI_CtrTimebase_DigFltr_MinPulseWidth = hex2dec('2272'); % Specifies in seconds the minimum pulse width the filter recognizes.
niconst.DAQmx_CI_CtrTimebase_DigFltr_TimebaseSrc = hex2dec('2273'); % Specifies the input terminal of the signal to use as the timebase of the pulse width filter.
niconst.DAQmx_CI_CtrTimebase_DigFltr_TimebaseRate = hex2dec('2274'); % Specifies in hertz the rate of the pulse width filter timebase. NI-DAQmx uses this value to compute settings for the filter.
niconst.DAQmx_CI_CtrTimebase_DigSync_Enable = hex2dec('2275'); % Specifies whether to synchronize recognition of transitions in the signal to the internal timebase of the device.
niconst.DAQmx_CI_Count = hex2dec('0148'); % Indicates the current value of the count register.
niconst.DAQmx_CI_OutputState = hex2dec('0149'); % Indicates the current state of the out terminal of the counter.
niconst.DAQmx_CI_TCReached = hex2dec('0150'); % Indicates whether the counter rolled over. When you query this property, NI-DAQmx resets it to FALSE.
niconst.DAQmx_CI_CtrTimebaseMasterTimebaseDiv = hex2dec('18B3'); % Specifies the divisor for an external counter timebase. You can divide the counter timebase in order to measure slower signals without causing the count register to roll over.
niconst.DAQmx_CI_DataXferMech = hex2dec('0200'); % Specifies the data transfer mode for the channel.
niconst.DAQmx_CI_NumPossiblyInvalidSamps = hex2dec('193C'); % Indicates the number of samples that the device might have overwritten before it could transfer them to the buffer.
niconst.DAQmx_CI_DupCountPrevent = hex2dec('21AC'); % Specifies whether to enable duplicate count prevention for the channel.
niconst.DAQmx_CI_Prescaler = hex2dec('2239'); % Specifies the divisor to apply to the signal you connect to the counter source terminal. Scaled data that you read takes this setting into account. You should use a prescaler only when you connect an external signal to the counter source terminal and when that signal has a higher frequency than the fastest onboard timebase.
niconst.DAQmx_CO_OutputType = hex2dec('18B5'); % Indicates how to define pulses generated on the channel.
niconst.DAQmx_CO_Pulse_IdleState = hex2dec('1170'); % Specifies the resting state of the output terminal.
niconst.DAQmx_CO_Pulse_Term = hex2dec('18E1'); % Specifies on which terminal to generate pulses.
niconst.DAQmx_CO_Pulse_Time_Units = hex2dec('18D6'); % Specifies the units in which to define high and low pulse time.
niconst.DAQmx_CO_Pulse_HighTime = hex2dec('18BA'); % Specifies the amount of time that the pulse is at a high voltage. This value is in the units you specify with Units or when you create the channel.
niconst.DAQmx_CO_Pulse_LowTime = hex2dec('18BB'); % Specifies the amount of time that the pulse is at a low voltage. This value is in the units you specify with Units or when you create the channel.
niconst.DAQmx_CO_Pulse_Time_InitialDelay = hex2dec('18BC'); % Specifies in seconds the amount of time to wait before generating the first pulse.
niconst.DAQmx_CO_Pulse_DutyCyc = hex2dec('1176'); % Specifies the duty cycle of the pulses. The duty cycle of a signal is the width of the pulse divided by period. NI-DAQmx uses this ratio and the pulse frequency to determine the width of the pulses and the delay between pulses.
niconst.DAQmx_CO_Pulse_Freq_Units = hex2dec('18D5'); % Specifies the units in which to define pulse frequency.
niconst.DAQmx_CO_Pulse_Freq = hex2dec('1178'); % Specifies the frequency of the pulses to generate. This value is in the units you specify with Units or when you create the channel.
niconst.DAQmx_CO_Pulse_Freq_InitialDelay = hex2dec('0299'); % Specifies in seconds the amount of time to wait before generating the first pulse.
niconst.DAQmx_CO_Pulse_HighTicks = hex2dec('1169'); % Specifies the number of ticks the pulse is high.
niconst.DAQmx_CO_Pulse_LowTicks = hex2dec('1171'); % Specifies the number of ticks the pulse is low.
niconst.DAQmx_CO_Pulse_Ticks_InitialDelay = hex2dec('0298'); % Specifies the number of ticks to wait before generating the first pulse.
niconst.DAQmx_CO_CtrTimebaseSrc = hex2dec('0339'); % Specifies the terminal of the timebase to use for the counter. Typically, NI-DAQmx uses one of the internal counter timebases when generating pulses. Use this property to specify an external timebase and produce custom pulse widths that are not possible using the internal timebases.
niconst.DAQmx_CO_CtrTimebaseRate = hex2dec('18C2'); % Specifies in Hertz the frequency of the counter timebase. Specifying the rate of a counter timebase allows you to define output pulses in seconds rather than in ticks of the timebase. If you use an external timebase and do not specify the rate, you can define output pulses only in ticks of the timebase.
niconst.DAQmx_CO_CtrTimebaseActiveEdge = hex2dec('0341'); % Specifies whether a timebase cycle is from rising edge to rising edge or from falling edge to falling edge.
niconst.DAQmx_CO_CtrTimebase_DigFltr_Enable = hex2dec('2276'); % Specifies whether to apply the pulse width filter to the signal.
niconst.DAQmx_CO_CtrTimebase_DigFltr_MinPulseWidth = hex2dec('2277'); % Specifies in seconds the minimum pulse width the filter recognizes.
niconst.DAQmx_CO_CtrTimebase_DigFltr_TimebaseSrc = hex2dec('2278'); % Specifies the input terminal of the signal to use as the timebase of the pulse width filter.
niconst.DAQmx_CO_CtrTimebase_DigFltr_TimebaseRate = hex2dec('2279'); % Specifies in hertz the rate of the pulse width filter timebase. NI-DAQmx uses this value to compute settings for the filter.
niconst.DAQmx_CO_CtrTimebase_DigSync_Enable = hex2dec('227A'); % Specifies whether to synchronize recognition of transitions in the signal to the internal timebase of the device.
niconst.DAQmx_CO_Count = hex2dec('0293'); % Indicates the current value of the count register.
niconst.DAQmx_CO_OutputState = hex2dec('0294'); % Indicates the current state of the output terminal of the counter.
niconst.DAQmx_CO_AutoIncrCnt = hex2dec('0295'); % Specifies a number of timebase ticks by which to increment each successive pulse.
niconst.DAQmx_CO_CtrTimebaseMasterTimebaseDiv = hex2dec('18C3'); % Specifies the divisor for an external counter timebase. You can divide the counter timebase in order to generate slower signals without causing the count register to roll over.
niconst.DAQmx_CO_PulseDone = hex2dec('190E'); % Indicates if the task completed pulse generation. Use this value for retriggerable pulse generation when you need to determine if the device generated the current pulse. When you query this property, NI-DAQmx resets it to FALSE.
niconst.DAQmx_CO_Prescaler = hex2dec('226D'); % Specifies the divisor to apply to the signal you connect to the counter source terminal. Pulse generations defined by frequency or time take this setting into account, but pulse generations defined by ticks do not. You should use a prescaler only when you connect an external signal to the counter source terminal and when that signal has a higher frequency than the fastest onboard timebase.

%********** Export Signal Attributes **********
niconst.DAQmx_Exported_AIConvClk_OutputTerm = hex2dec('1687'); % Specifies the terminal to which to route the AI Convert Clock.
niconst.DAQmx_Exported_AIConvClk_Pulse_Polarity = hex2dec('1688'); % Indicates the polarity of the exported AI Convert Clock. The polarity is fixed and independent of the active edge of the source of the AI Convert Clock.
niconst.DAQmx_Exported_10MHzRefClk_OutputTerm = hex2dec('226E'); % Specifies the terminal to which to route the 10MHz Clock.
niconst.DAQmx_Exported_20MHzTimebase_OutputTerm = hex2dec('1657'); % Specifies the terminal to which to route the 20MHz Timebase.
niconst.DAQmx_Exported_SampClk_OutputBehavior = hex2dec('186B'); % Specifies whether the exported Sample Clock issues a pulse at the beginning of a sample or changes to a high state for the duration of the sample.
niconst.DAQmx_Exported_SampClk_OutputTerm = hex2dec('1663'); % Specifies the terminal to which to route the Sample Clock.
niconst.DAQmx_Exported_SampClkTimebase_OutputTerm = hex2dec('18F9'); % Specifies the terminal to which to route the Sample Clock Timebase.
niconst.DAQmx_Exported_DividedSampClkTimebase_OutputTerm = hex2dec('21A1'); % Specifies the terminal to which to route the Divided Sample Clock Timebase.
niconst.DAQmx_Exported_AdvTrig_OutputTerm = hex2dec('1645'); % Specifies the terminal to which to route the Advance Trigger.
niconst.DAQmx_Exported_AdvTrig_Pulse_Polarity = hex2dec('1646'); % Indicates the polarity of the exported Advance Trigger.
niconst.DAQmx_Exported_AdvTrig_Pulse_WidthUnits = hex2dec('1647'); % Specifies the units of Width Value.
niconst.DAQmx_Exported_AdvTrig_Pulse_Width = hex2dec('1648'); % Specifies the width of an exported Advance Trigger pulse. Specify this value in the units you specify with Width Units.
niconst.DAQmx_Exported_RefTrig_OutputTerm = hex2dec('0590'); % Specifies the terminal to which to route the Reference Trigger.
niconst.DAQmx_Exported_StartTrig_OutputTerm = hex2dec('0584'); % Specifies the terminal to which to route the Start Trigger.
niconst.DAQmx_Exported_AdvCmpltEvent_OutputTerm = hex2dec('1651'); % Specifies the terminal to which to route the Advance Complete Event.
niconst.DAQmx_Exported_AdvCmpltEvent_Delay = hex2dec('1757'); % Specifies the output signal delay in periods of the sample clock.
niconst.DAQmx_Exported_AdvCmpltEvent_Pulse_Polarity = hex2dec('1652'); % Specifies the polarity of the exported Advance Complete Event.
niconst.DAQmx_Exported_AdvCmpltEvent_Pulse_Width = hex2dec('1654'); % Specifies the width of the exported Advance Complete Event pulse.
niconst.DAQmx_Exported_AIHoldCmpltEvent_OutputTerm = hex2dec('18ED'); % Specifies the terminal to which to route the AI Hold Complete Event.
niconst.DAQmx_Exported_AIHoldCmpltEvent_PulsePolarity = hex2dec('18EE'); % Specifies the polarity of an exported AI Hold Complete Event pulse.
niconst.DAQmx_Exported_ChangeDetectEvent_OutputTerm = hex2dec('2197'); % Specifies the terminal to which to route the Change Detection Event.
niconst.DAQmx_Exported_CtrOutEvent_OutputTerm = hex2dec('1717'); % Specifies the terminal to which to route the Counter Output Event.
niconst.DAQmx_Exported_CtrOutEvent_OutputBehavior = hex2dec('174F'); % Specifies whether the exported Counter Output Event pulses or changes from one state to the other when the counter reaches terminal count.
niconst.DAQmx_Exported_CtrOutEvent_Pulse_Polarity = hex2dec('1718'); % Specifies the polarity of the pulses at the output terminal of the counter when Output Behavior is niconst.DAQmx_Val_Pulse. NI-DAQmx ignores this property if Output Behavior is niconst.DAQmx_Val_Toggle.
niconst.DAQmx_Exported_CtrOutEvent_Toggle_IdleState = hex2dec('186A'); % Specifies the initial state of the output terminal of the counter when Output Behavior is niconst.DAQmx_Val_Toggle. The terminal enters this state when NI-DAQmx commits the task.
niconst.DAQmx_Exported_SyncPulseEvent_OutputTerm = hex2dec('223C'); % Specifies the terminal to which to route the Synchronization Pulse Event.
niconst.DAQmx_Exported_WatchdogExpiredEvent_OutputTerm = hex2dec('21AA'); % Specifies the terminalto which to route the Watchdog Timer Expired Event.

%********** Device Attributes **********
niconst.DAQmx_Dev_ProductType = hex2dec('0631'); % Indicates the product name of the device.
niconst.DAQmx_Dev_SerialNum = hex2dec('0632'); % Indicates the serial number of the device. This value is zero if the device does not have a serial number.

%********** Read Attributes **********
niconst.DAQmx_Read_RelativeTo = hex2dec('190A'); % Specifies the point in the buffer at which to begin a read operation. If you also specify an offset with Offset, the read operation begins at that offset relative to the point you select with this property. The default value is niconst.DAQmx_Val_CurrReadPos unless you configure a Reference Trigger for the task. If you configure a Reference Trigger, the default value is niconst.DAQmx_Val_FirstPretrigSamp.
niconst.DAQmx_Read_Offset = hex2dec('190B'); % Specifies an offset in samples per channel at which to begin a read operation. This offset is relative to the location you specify with RelativeTo.
niconst.DAQmx_Read_ChannelsToRead = hex2dec('1823'); % Specifies a subset of channels in the task from which to read.
niconst.DAQmx_Read_ReadAllAvailSamp = hex2dec('1215'); % Specifies whether subsequent read operations read all samples currently available in the buffer or wait for the buffer to become full before reading. NI-DAQmx uses this setting for finite acquisitions and only when the number of samples to read is -1. For continuous acquisitions when the number of samples to read is -1, a read operation always reads all samples currently available in the buffer.
niconst.DAQmx_Read_AutoStart = hex2dec('1826'); % Specifies if an NI-DAQmx Read function automatically starts the taskif you did not start the task explicitly by using DAQmxStartTask(). The default value is TRUE. Whenan NI-DAQmx Read function starts a finite acquisition task, it also stops the task after reading the last sample.
niconst.DAQmx_Read_OverWrite = hex2dec('1211'); % Specifies whether to overwrite samples in the buffer that you have not yet read.
niconst.DAQmx_Read_CurrReadPos = hex2dec('1221'); % Indicates in samples per channel the current position in the buffer.
niconst.DAQmx_Read_AvailSampPerChan = hex2dec('1223'); % Indicates the number of samples available to read per channel. This value is the same for all channels in the task.
niconst.DAQmx_Read_TotalSampPerChanAcquired = hex2dec('192A'); % Indicates the total number of samples acquired by each channel. NI-DAQmx returns a single value because this value is the same for all channels.
niconst.DAQmx_Read_OverloadedChansExist = hex2dec('2174'); % Indicates if the device detected an overload in any channel in the task. Reading this property clears the overload status for all channels in the task. You must read this property before you read Overloaded Channels. Otherwise, you will receive an error.
niconst.DAQmx_Read_OverloadedChans = hex2dec('2175'); % Indicates the names of any overloaded virtual channels in the task. You must read Overloaded Channels Exist before you read this property. Otherwise, you will receive an error.
niconst.DAQmx_Read_ChangeDetect_HasOverflowed = hex2dec('2194'); % Indicates if samples were missed because change detection events occurred faster than the device could handle them. Some devices detect overflows differently than others.
niconst.DAQmx_Read_RawDataWidth = hex2dec('217A'); % Indicates in bytes the size of a raw sample from the task.
niconst.DAQmx_Read_NumChans = hex2dec('217B'); % Indicates the number of channels that an NI-DAQmx Read function reads from the task. This value is the number of channels in the task or the number of channels you specify with Channels to Read.
niconst.DAQmx_Read_DigitalLines_BytesPerChan = hex2dec('217C'); % Indicates the number of bytes per channel that NI-DAQmx returns in a sample for line-based reads. If a channel has fewer lines than this number, the extra bytes are FALSE.
niconst.DAQmx_ReadWaitMode = hex2dec('2232'); % Specifies how an NI-DAQmx Read function waits for samples to become available.

%********** Switch Channel Attributes **********
niconst.DAQmx_SwitchChan_Usage = hex2dec('18E4'); % Specifies how you can use the channel. Using this property acts as a safety mechanism to prevent you from connecting two source channels, for example.
niconst.DAQmx_SwitchChan_MaxACCarryCurrent = hex2dec('0648'); % Indicates in amperes the maximum AC current that the device can carry.
niconst.DAQmx_SwitchChan_MaxACSwitchCurrent = hex2dec('0646'); % Indicates in amperes the maximum AC current that the device can switch. This current is always against an RMS voltage level.
niconst.DAQmx_SwitchChan_MaxACCarryPwr = hex2dec('0642'); % Indicates in watts the maximum AC power that the device can carry.
niconst.DAQmx_SwitchChan_MaxACSwitchPwr = hex2dec('0644'); % Indicates in watts the maximum AC power that the device can switch.
niconst.DAQmx_SwitchChan_MaxDCCarryCurrent = hex2dec('0647'); % Indicates in amperes the maximum DC current that the device can carry.
niconst.DAQmx_SwitchChan_MaxDCSwitchCurrent = hex2dec('0645'); % Indicates in amperes the maximum DC current that the device can switch. This current is always against a DC voltage level.
niconst.DAQmx_SwitchChan_MaxDCCarryPwr = hex2dec('0643'); % Indicates in watts the maximum DC power that the device can carry.
niconst.DAQmx_SwitchChan_MaxDCSwitchPwr = hex2dec('0649'); % Indicates in watts the maximum DC power that the device can switch.
niconst.DAQmx_SwitchChan_MaxACVoltage = hex2dec('0651'); % Indicates in volts the maximum AC RMS voltage that the device can switch.
niconst.DAQmx_SwitchChan_MaxDCVoltage = hex2dec('0650'); % Indicates in volts the maximum DC voltage that the device can switch.
niconst.DAQmx_SwitchChan_WireMode = hex2dec('18E5'); % Indicates the number of wires that the channel switches.
niconst.DAQmx_SwitchChan_Bandwidth = hex2dec('0640'); % Indicates in Hertz the maximum frequency of a signal that can pass through the switch without significant deterioration.
niconst.DAQmx_SwitchChan_Impedance = hex2dec('0641'); % Indicates in ohms the switch impedance. This value is important in the RF domain and should match the impedance of the sources and loads.

%********** Switch Device Attributes **********
niconst.DAQmx_SwitchDev_SettlingTime = hex2dec('1244'); % Specifies in seconds the amount of time to wait for the switch to settle (or debounce). NI-DAQmx adds this time to the settling time of the motherboard. Modify this property only if the switch does not settle within the settling time of the motherboard. Refer to device documentation for supported settling times.
niconst.DAQmx_SwitchDev_AutoConnAnlgBus = hex2dec('17DA'); % Specifies if NI-DAQmx routes multiplexed channels to the analog bus backplane. Only the SCXI-1127 and SCXI-1128 support this property.
niconst.DAQmx_SwitchDev_Settled = hex2dec('1243'); % Indicates when Settling Time expires.
niconst.DAQmx_SwitchDev_RelayList = hex2dec('17DC'); % Indicates a comma-delimited list of relay names.
niconst.DAQmx_SwitchDev_NumRelays = hex2dec('18E6'); % Indicates the number of relays on the device. This value matches the number of relay names in Relay List.
niconst.DAQmx_SwitchDev_SwitchChanList = hex2dec('18E7'); % Indicates a comma-delimited list of channel names for the current topology of the device.
niconst.DAQmx_SwitchDev_NumSwitchChans = hex2dec('18E8'); % Indicates the number of switch channels for the current topology of the device. This value matches the number of channel names in Switch Channel List.
niconst.DAQmx_SwitchDev_NumRows = hex2dec('18E9'); % Indicates the number of rows on a device in a matrix switch topology. Indicates the number of multiplexed channels on a device in a mux topology.
niconst.DAQmx_SwitchDev_NumColumns = hex2dec('18EA'); % Indicates the number of columns on a device in a matrix switch topology. This value is always 1 if the device is in a mux topology.
niconst.DAQmx_SwitchDev_Topology = hex2dec('193D'); % Indicates the current topology of the device. This value is one of the topology options in DAQmxSwitchSetTopologyAndReset().

%********** Switch Scan Attributes **********
niconst.DAQmx_SwitchScan_BreakMode = hex2dec('1247'); % Specifies the break mode between each entry in a scan list.
niconst.DAQmx_SwitchScan_RepeatMode = hex2dec('1248'); % Specifies if the task advances through the scan list multiple times.
niconst.DAQmx_SwitchScan_WaitingForAdv = hex2dec('17D9'); % Indicates if the switch hardware is waiting for anAdvance Trigger. If the hardware is waiting, it completed the previous entry in the scan list.

%********** Scale Attributes **********
niconst.DAQmx_Scale_Descr = hex2dec('1226'); % Specifies a description for the scale.
niconst.DAQmx_Scale_ScaledUnits = hex2dec('191B'); % Specifies the units to use for scaled values. You can use an arbitrary string.
niconst.DAQmx_Scale_PreScaledUnits = hex2dec('18F7'); % Specifies the units of the values that you want to scale.
niconst.DAQmx_Scale_Type = hex2dec('1929'); % Indicates the method or equation form that the custom scale uses.
niconst.DAQmx_Scale_Lin_Slope = hex2dec('1227'); % Specifies the slope, m, in the equation y = mx+b.
niconst.DAQmx_Scale_Lin_YIntercept = hex2dec('1228'); % Specifies the y-intercept, b, in the equation y = mx+b.
niconst.DAQmx_Scale_Map_ScaledMax = hex2dec('1229'); % Specifies the largest value in the range of scaled values. NI-DAQmx maps this value to Pre-Scaled Maximum Value. Reads clip samples that are larger than this value. Writes generate errors for samples that are larger than this value.
niconst.DAQmx_Scale_Map_PreScaledMax = hex2dec('1231'); % Specifies the largest value in the range of pre-scaled values. NI-DAQmx maps this value to Scaled Maximum Value.
niconst.DAQmx_Scale_Map_ScaledMin = hex2dec('1230'); % Specifies the smallest value in the range of scaled values. NI-DAQmx maps this value to Pre-Scaled Minimum Value. Reads clip samples that are smaller than this value. Writes generate errors for samples that are smaller than this value.
niconst.DAQmx_Scale_Map_PreScaledMin = hex2dec('1232'); % Specifies the smallest value in the range of pre-scaled values. NI-DAQmx maps this value to Scaled Minimum Value.
niconst.DAQmx_Scale_Poly_ForwardCoeff = hex2dec('1234'); % Specifies an array of coefficients for the polynomial that converts pre-scaled values to scaled values. Each element of the array corresponds to a term of the equation. For example, if index three of the array is 9, the fourth term of the equation is 9x^3.
niconst.DAQmx_Scale_Poly_ReverseCoeff = hex2dec('1235'); % Specifies an array of coefficients for the polynomial that converts scaled values to pre-scaled values. Each element of the array corresponds to a term of the equation. For example, if index three of the array is 9, the fourth term of the equation is 9y^3.
niconst.DAQmx_Scale_Table_ScaledVals = hex2dec('1236'); % Specifies an array of scaled values. These values map directly to the values in Pre-Scaled Values.
niconst.DAQmx_Scale_Table_PreScaledVals = hex2dec('1237'); % Specifies an array of pre-scaled values. These values map directly to the values in Scaled Values.

%********** System Attributes **********
niconst.DAQmx_Sys_GlobalChans = hex2dec('1265'); % Indicates an array that contains the names of all global channels saved on the system.
niconst.DAQmx_Sys_Scales = hex2dec('1266'); % Indicates an array that contains the names of all custom scales saved on the system.
niconst.DAQmx_Sys_Tasks = hex2dec('1267'); % Indicates an array that contains the names of all tasks saved on the system.
niconst.DAQmx_Sys_DevNames = hex2dec('193B'); % Indicates an array that contains the names of all devices installed in the system.
niconst.DAQmx_Sys_NIDAQMajorVersion = hex2dec('1272'); % Indicates the major portion of the installed version of NI-DAQ, such as 7 for version 7.0.
niconst.DAQmx_Sys_NIDAQMinorVersion = hex2dec('1923'); % Indicates the minor portion of the installed version of NI-DAQ, such as 0 for version 7.0.

%********** Task Attributes **********
niconst.DAQmx_Task_Name = hex2dec('1276'); % Indicates the name of the task.
niconst.DAQmx_Task_Channels = hex2dec('1273'); % Indicates the names of all virtual channels in the task.
niconst.DAQmx_Task_NumChans = hex2dec('2181'); % Indicates the number of virtual channels in the task.
niconst.DAQmx_Task_Complete = hex2dec('1274'); % Indicates whether the task completed execution.

%********** Timing Attributes **********
niconst.DAQmx_SampQuant_SampMode = hex2dec('1300'); % Specifies if a task acquires or generates a finite number of samples or if it continuously acquires or generates samples.
niconst.DAQmx_SampQuant_SampPerChan = hex2dec('1310'); % Specifies the number of samples to acquire or generate for each channel if Sample Mode is niconst.DAQmx_Val_FiniteSamps. If Sample Mode is niconst.DAQmx_Val_ContSamps, NI-DAQmx uses this value to determine the buffer size.
niconst.DAQmx_SampTimingType = hex2dec('1347'); % Specifies the type of sample timing to use for the task.
niconst.DAQmx_SampClk_Rate = hex2dec('1344'); % Specifies the sampling rate in samples per channel per second. If you use an external source for the Sample Clock, set this input to the maximum expected rate of that clock.
niconst.DAQmx_SampClk_Src = hex2dec('1852'); % Specifies the terminal of the signal to use as the Sample Clock.
niconst.DAQmx_SampClk_ActiveEdge = hex2dec('1301'); % Specifies on which edge of a clock pulse sampling takes place. This property is useful primarily when the signal you use as the Sample Clock is not a periodic clock.
niconst.DAQmx_SampClk_TimebaseDiv = hex2dec('18EB'); % Specifies the number of Sample Clock Timebase pulses needed to produce a single Sample Clock pulse.
niconst.DAQmx_SampClk_Timebase_Rate = hex2dec('1303'); % Specifies the rate of the Sample Clock Timebase. Some applications require that you specify a rate when you use any signal other than the onboard Sample Clock Timebase. NI-DAQmx requires this rate to calculate other timing parameters.
niconst.DAQmx_SampClk_Timebase_Src = hex2dec('1308'); % Specifies the terminal of the signal to use as the Sample Clock Timebase.
niconst.DAQmx_SampClk_Timebase_ActiveEdge = hex2dec('18EC'); % Specifies on which edge to recognize a Sample Clock Timebase pulse. This property is useful primarily when the signal you use as the Sample Clock Timebase is not a periodic clock.
niconst.DAQmx_SampClk_Timebase_MasterTimebaseDiv = hex2dec('1305'); % Specifies the number of pulses of the Master Timebase needed to produce a single pulse of the Sample Clock Timebase.
niconst.DAQmx_SampClk_DigFltr_Enable = hex2dec('221E'); % Specifies whether to apply the pulse width filter to the signal.
niconst.DAQmx_SampClk_DigFltr_MinPulseWidth = hex2dec('221F'); % Specifies in seconds the minimum pulse width the filter recognizes.
niconst.DAQmx_SampClk_DigFltr_TimebaseSrc = hex2dec('2220'); % Specifies the input terminal of the signal to use as the timebase of the pulse width filter.
niconst.DAQmx_SampClk_DigFltr_TimebaseRate = hex2dec('2221'); % Specifies in hertz the rate of the pulse width filter timebase. NI-DAQmx uses this value to compute settings for the filter.
niconst.DAQmx_SampClk_DigSync_Enable = hex2dec('2222'); % Specifies whether to synchronize recognition of transitions in the signal to the internal timebase of the device.
niconst.DAQmx_ChangeDetect_DI_RisingEdgePhysicalChans = hex2dec('2195'); % Specifies the names of the digital lines or ports on which to detect rising edges. The lines or ports must be used by virtual channels in the task. You also can specify a string that contains a list or range of digital lines or ports.
niconst.DAQmx_ChangeDetect_DI_FallingEdgePhysicalChans = hex2dec('2196'); % Specifies the names of the digital lines or ports on which to detect rising edges. The lines or ports must be used by virtual channels in the task. You also can specify a string that contains a list or range of digital lines or ports.
niconst.DAQmx_OnDemand_SimultaneousAOEnable = hex2dec('21A0'); % Specifies whether to update all channels in the task simultaneously, rather than updating channels independently when you write a sample to that channel.
niconst.DAQmx_AIConv_Rate = hex2dec('1848'); % Specifies the rate at which to clock the analog-to-digital converter. This clock is specific to the analog input section of an E Series device.
niconst.DAQmx_AIConv_Src = hex2dec('1502'); % Specifies the terminal of the signal to use as the AI Convert Clock.
niconst.DAQmx_AIConv_ActiveEdge = hex2dec('1853'); % Specifies on which edge of the clock pulse an analog-to-digital conversion takes place.
niconst.DAQmx_AIConv_TimebaseDiv = hex2dec('1335'); % Specifies the number of AI Convert Clock Timebase pulses needed to produce a single AI Convert Clock pulse.
niconst.DAQmx_AIConv_Timebase_Src = hex2dec('1339'); % Specifies the terminalof the signal to use as the AI Convert Clock Timebase.
niconst.DAQmx_MasterTimebase_Rate = hex2dec('1495'); % Specifies the rate of the Master Timebase.
niconst.DAQmx_MasterTimebase_Src = hex2dec('1343'); % Specifies the terminal of the signal to use as the Master Timebase. On an E Series device, you can choose only between the onboard 20MHz Timebase or the RTSI7 terminal.
niconst.DAQmx_RefClk_Rate = hex2dec('1315'); % Specifies the frequency of the Reference Clock.
niconst.DAQmx_RefClk_Src = hex2dec('1316'); % Specifies the terminal of the signal to use as the Reference Clock.
niconst.DAQmx_SyncPulse_Src = hex2dec('223D'); % Specifies the terminal of the signal to use as the synchronization pulse. The synchronization pulse resets the clock dividers and the ADCs/DACs on the device.
niconst.DAQmx_SyncPulse_SyncTime = hex2dec('223E'); % Indicates in seconds the delay required to reset the ADCs/DACs after the device receives the synchronization pulse.
niconst.DAQmx_SyncPulse_MinDelayToStart = hex2dec('223F'); % Specifies in seconds the amount of time that elapses after the master device issues the synchronization pulse before the task starts.
niconst.DAQmx_DelayFromSampClk_DelayUnits = hex2dec('1304'); % Specifies the units of Delay.
niconst.DAQmx_DelayFromSampClk_Delay = hex2dec('1317'); % Specifies the amount of time to wait after receiving a Sample Clock edge before beginning to acquire the sample. This value is in the units you specify with Delay Units.

%********** Trigger Attributes **********
niconst.DAQmx_StartTrig_Type = hex2dec('1393'); % Specifies the type of trigger to use to start a task.
niconst.DAQmx_DigEdge_StartTrig_Src = hex2dec('1407'); % Specifies the name of a terminal where there is a digital signal to use as the source of the Start Trigger.
niconst.DAQmx_DigEdge_StartTrig_Edge = hex2dec('1404'); % Specifies on which edge of a digital pulse to start acquiring or generating samples.
niconst.DAQmx_DigEdge_StartTrig_DigFltr_Enable = hex2dec('2223'); % Specifies whether to apply the pulse width filter to the signal.
niconst.DAQmx_DigEdge_StartTrig_DigFltr_MinPulseWidth = hex2dec('2224'); % Specifies in seconds the minimum pulse width the filter recognizes.
niconst.DAQmx_DigEdge_StartTrig_DigFltr_TimebaseSrc = hex2dec('2225'); % Specifies the input terminal of the signal to use as the timebase of the pulse width filter.
niconst.DAQmx_DigEdge_StartTrig_DigFltr_TimebaseRate = hex2dec('2226'); % Specifies in hertz the rate of the pulse width filter timebase. NI-DAQmx uses this value to compute settings for the filter.
niconst.DAQmx_DigEdge_StartTrig_DigSync_Enable = hex2dec('2227'); % Specifies whether to synchronize recognition of transitions in the signal to the internal timebase of the device.
niconst.DAQmx_AnlgEdge_StartTrig_Src = hex2dec('1398'); % Specifies the name of a virtual channel or terminal where there is an analog signal to use as the source of the Start Trigger.
niconst.DAQmx_AnlgEdge_StartTrig_Slope = hex2dec('1397'); % Specifies on which slope of the trigger signal to start acquiring or generating samples.
niconst.DAQmx_AnlgEdge_StartTrig_Lvl = hex2dec('1396'); % Specifies at what threshold in the units of the measurement or generation to start acquiring or generating samples. Use Slope to specify on which slope to trigger on this threshold.
niconst.DAQmx_AnlgEdge_StartTrig_Hyst = hex2dec('1395'); % Specifies a hysteresis level in the units of the measurement or generation. If Slope is niconst.DAQmx_Val_RisingSlope, the trigger does not deassert until the source signal passes belowLevel minus the hysteresis. If Slope is niconst.DAQmx_Val_FallingSlope, the trigger does not deassert until the source signal passes above Level plus the hysteresis.
niconst.DAQmx_AnlgEdge_StartTrig_Coupling = hex2dec('2233'); % Specifies the coupling for the source signal of the trigger if the source is a terminal rather than a virtual channel.
niconst.DAQmx_AnlgWin_StartTrig_Src = hex2dec('1400'); % Specifies the name of a virtual channel or terminal where there is an analog signal to use as the source of the Start Trigger.
niconst.DAQmx_AnlgWin_StartTrig_When = hex2dec('1401'); % Specifies whether the task starts acquiring or generating samples when the signal enters or leaves the window you specify with Bottom and Top.
niconst.DAQmx_AnlgWin_StartTrig_Top = hex2dec('1403'); % Specifies the upper limit of the window. Specify this value in the units of the measurement or generation.
niconst.DAQmx_AnlgWin_StartTrig_Btm = hex2dec('1402'); % Specifies the lower limit of the window. Specify this value in the units of the measurement or generation.
niconst.DAQmx_AnlgWin_StartTrig_Coupling = hex2dec('2234'); % Specifies the coupling for the source signal of the trigger if the source is a terminal rather than a virtual channel.
niconst.DAQmx_StartTrig_Delay = hex2dec('1856'); % Specifies an amount of time to wait after the Start Trigger is received before acquiring or generating the first sample. This value is in the units you specify with Delay Units.
niconst.DAQmx_StartTrig_DelayUnits = hex2dec('18C8'); % Specifies the units of Delay.
niconst.DAQmx_StartTrig_Retriggerable = hex2dec('190F'); % Specifies whether to enable retriggerable counter pulse generation. When you set this property to TRUE, the device generates pulses each time it receives a trigger. The device ignores a trigger if it is in the process of generating pulses.
niconst.DAQmx_RefTrig_Type = hex2dec('1419'); % Specifies the type of trigger to use to mark a reference point for the measurement.
niconst.DAQmx_RefTrig_PretrigSamples = hex2dec('1445'); % Specifies the minimum number of pretrigger samples to acquire from each channel before recognizing the reference trigger. Post-trigger samples per channel are equal to Samples Per Channel minus the number of pretrigger samples per channel.
niconst.DAQmx_DigEdge_RefTrig_Src = hex2dec('1434'); % Specifies the name of a terminal where there is a digital signal to use as the source of the Reference Trigger.
niconst.DAQmx_DigEdge_RefTrig_Edge = hex2dec('1430'); % Specifies on what edge of a digital pulse the Reference Trigger occurs.
niconst.DAQmx_AnlgEdge_RefTrig_Src = hex2dec('1424'); % Specifies the name of a virtual channel or terminal where there is an analog signal to use as the source of the Reference Trigger.
niconst.DAQmx_AnlgEdge_RefTrig_Slope = hex2dec('1423'); % Specifies on which slope of the source signal the Reference Trigger occurs.
niconst.DAQmx_AnlgEdge_RefTrig_Lvl = hex2dec('1422'); % Specifies in the units of the measurement the threshold at which the Reference Trigger occurs.Use Slope to specify on which slope to trigger at this threshold.
niconst.DAQmx_AnlgEdge_RefTrig_Hyst = hex2dec('1421'); % Specifies a hysteresis level in the units of the measurement. If Slope is niconst.DAQmx_Val_RisingSlope, the trigger does not deassert until the source signal passes below Level minus the hysteresis. If Slope is niconst.DAQmx_Val_FallingSlope, the trigger does not deassert until the source signal passes above Level plus the hysteresis.
niconst.DAQmx_AnlgEdge_RefTrig_Coupling = hex2dec('2235'); % Specifies the coupling for the source signal of the trigger if the source is a terminal rather than a virtual channel.
niconst.DAQmx_AnlgWin_RefTrig_Src = hex2dec('1426'); % Specifies the name of a virtual channel or terminal where there is an analog signal to use as the source of the Reference Trigger.
niconst.DAQmx_AnlgWin_RefTrig_When = hex2dec('1427'); % Specifies whether the Reference Trigger occurs when the source signal enters the window or when it leaves the window. Use Bottom and Top to specify the window.
niconst.DAQmx_AnlgWin_RefTrig_Top = hex2dec('1429'); % Specifies the upper limit of the window. Specify this value in the units of the measurement.
niconst.DAQmx_AnlgWin_RefTrig_Btm = hex2dec('1428'); % Specifies the lower limit of the window. Specify this value in the units of the measurement.
niconst.DAQmx_AnlgWin_RefTrig_Coupling = hex2dec('1857'); % Specifies the coupling for the source signal of the trigger if the source is a terminal rather than a virtual channel.
niconst.DAQmx_AdvTrig_Type = hex2dec('1365'); % Specifies the type of trigger to use to advance to the next entry in a scan list.
niconst.DAQmx_DigEdge_AdvTrig_Src = hex2dec('1362'); % Specifies the name of a terminal where there is a digital signal to use as the source of the Advance Trigger.
niconst.DAQmx_DigEdge_AdvTrig_Edge = hex2dec('1360'); % Specifies on which edge of a digital signal to advance to the next entry in a scan list.
niconst.DAQmx_DigEdge_AdvTrig_DigFltr_Enable = hex2dec('2238'); % Specifies whether to apply the pulse width filter to the signal.
niconst.DAQmx_PauseTrig_Type = hex2dec('1366'); % Specifies the type of trigger to use to pause a task.
niconst.DAQmx_AnlgLvl_PauseTrig_Src = hex2dec('1370'); % Specifies the name of a virtual channel or terminal where there is an analog signal to use as the source of the trigger.
niconst.DAQmx_AnlgLvl_PauseTrig_When = hex2dec('1371'); % Specifies whether the task pauses above or below the threshold you specify with Level.
niconst.DAQmx_AnlgLvl_PauseTrig_Lvl = hex2dec('1369'); % Specifies the threshold at which to pause the task. Specify this value in the units of the measurement or generation. Use Pause When to specify whether the task pauses above or below this threshold.
niconst.DAQmx_AnlgLvl_PauseTrig_Hyst = hex2dec('1368'); % Specifies a hysteresis level in the units of the measurement or generation. If Pause When is niconst.DAQmx_Val_AboveLvl, the trigger does not deassert until the source signal passes below Level minus the hysteresis. If Pause When is niconst.DAQmx_Val_BelowLvl, the trigger does not deassert until the source signal passes above Level plus the hysteresis.
niconst.DAQmx_AnlgLvl_PauseTrig_Coupling = hex2dec('2236'); % Specifies the coupling for the source signal of the trigger if the source is a terminal rather than a virtual channel.
niconst.DAQmx_AnlgWin_PauseTrig_Src = hex2dec('1373'); % Specifies the name of a virtual channel or terminal where there is an analog signal to use as the source of the trigger.
niconst.DAQmx_AnlgWin_PauseTrig_When = hex2dec('1374'); % Specifies whether the task pauses while the trigger signal is inside or outside the window you specify with Bottom and Top.
niconst.DAQmx_AnlgWin_PauseTrig_Top = hex2dec('1376'); % Specifies the upper limit of the window. Specify this value in the units of the measurement or generation.
niconst.DAQmx_AnlgWin_PauseTrig_Btm = hex2dec('1375'); % Specifies the lower limit of the window. Specify this value in the units of the measurement or generation.
niconst.DAQmx_AnlgWin_PauseTrig_Coupling = hex2dec('2237'); % Specifies the coupling for the source signal of the trigger if the source is a terminal rather than a virtual channel.
niconst.DAQmx_DigLvl_PauseTrig_Src = hex2dec('1379'); % Specifies the name of a terminal where there is a digital signal to use as the source of the Pause Trigger.
niconst.DAQmx_DigLvl_PauseTrig_When = hex2dec('1380'); % Specifies whether the task pauses while the signal is high or low.
niconst.DAQmx_DigLvl_PauseTrig_DigFltr_Enable = hex2dec('2228'); % Specifies whether to apply the pulse width filter to the signal.
niconst.DAQmx_DigLvl_PauseTrig_DigFltr_MinPulseWidth = hex2dec('2229'); % Specifies in seconds the minimum pulse width the filter recognizes.
niconst.DAQmx_DigLvl_PauseTrig_DigFltr_TimebaseSrc = hex2dec('222A'); % Specifies the input terminal of the signal to use as the timebase of the pulse width filter.
niconst.DAQmx_DigLvl_PauseTrig_DigFltr_TimebaseRate = hex2dec('222B'); % Specifies in hertz the rate of the pulse width filter timebase. NI-DAQmx uses this value to compute settings for the filter.
niconst.DAQmx_DigLvl_PauseTrig_DigSync_Enable = hex2dec('222C'); % Specifies whether to synchronize recognition of transitions in the signal to the internal timebase of the device.
niconst.DAQmx_ArmStartTrig_Type = hex2dec('1414'); % Specifies the type of trigger to use to arm the task for a Start Trigger. If you configure an Arm Start Trigger, the task does not respond to a Start Trigger until the device receives the Arm Start Trigger.
niconst.DAQmx_DigEdge_ArmStartTrig_Src = hex2dec('1417'); % Specifies the name of a terminal where there is a digital signal to use as the source of the Arm Start Trigger.
niconst.DAQmx_DigEdge_ArmStartTrig_Edge = hex2dec('1415'); % Specifies on which edge of a digital signal to arm the task for a Start Trigger.
niconst.DAQmx_DigEdge_ArmStartTrig_DigFltr_Enable = hex2dec('222D'); % Specifies whether to apply the pulse width filter to the signal.
niconst.DAQmx_DigEdge_ArmStartTrig_DigFltr_MinPulseWidth = hex2dec('222E'); % Specifies in seconds the minimum pulse width the filter recognizes.
niconst.DAQmx_DigEdge_ArmStartTrig_DigFltr_TimebaseSrc = hex2dec('222F'); % Specifies the input terminal of the signal to use as the timebase of the pulse width filter.
niconst.DAQmx_DigEdge_ArmStartTrig_DigFltr_TimebaseRate = hex2dec('2230'); % Specifies in hertz the rate of the pulse width filter timebase. NI-DAQmx uses this value to compute settings for the filter.
niconst.DAQmx_DigEdge_ArmStartTrig_DigSync_Enable = hex2dec('2231'); % Specifies whether to synchronize recognition of transitions in the signal to the internal timebase of the device.

%********** Watchdog Attributes **********
niconst.DAQmx_Watchdog_Timeout = hex2dec('21A9'); % Specifies in seconds the amount of time until the watchdog timer expires. A value of -1 means the internal timer never expires. Set this input to -1 if you use an Expiration Trigger to expire the watchdog task.
niconst.DAQmx_WatchdogExpirTrig_Type = hex2dec('21A3'); % Specifies the type of trigger to use to expire a watchdog task.
niconst.DAQmx_DigEdge_WatchdogExpirTrig_Src = hex2dec('21A4'); % Specifies the name of a terminal where a digital signal exists to use as the source of the Expiration Trigger.
niconst.DAQmx_DigEdge_WatchdogExpirTrig_Edge = hex2dec('21A5'); % Specifies on which edge of a digital signal to expire the watchdog task.
niconst.DAQmx_Watchdog_DO_ExpirState = hex2dec('21A7'); % Specifies the state to which to set the digital physical channels when the watchdog task expires.You cannot modify the expiration state of dedicated digital input physical channels.
niconst.DAQmx_Watchdog_HasExpired = hex2dec('21A8'); % Indicates if the watchdog timer expired. You can read this property only while the task is running.

%********** Write Attributes **********
niconst.DAQmx_Write_RelativeTo = hex2dec('190C'); % Specifies the point in the buffer at which to write data. If you also specify an offset with Offset, the write operation begins at that offset relative to this point you select with this property.
niconst.DAQmx_Write_Offset = hex2dec('190D'); % Specifies in samples per channel an offset at which a write operation begins. This offset is relative to the location you specify with Relative To.
niconst.DAQmx_Write_RegenMode = hex2dec('1453'); % Specifies whether to allow NI-DAQmx to generate the same data multiple times.
niconst.DAQmx_Write_CurrWritePos = hex2dec('1458'); % Indicates the number of the next sample for the device to generate. This value is identical for all channels in the task.
niconst.DAQmx_Write_SpaceAvail = hex2dec('1460'); % Indicates in samples per channel the amount of available space in the buffer.
niconst.DAQmx_Write_TotalSampPerChanGenerated = hex2dec('192B'); % Indicates the total number of samples generated by each channel in the task. This value is identical for all channels in the task.
niconst.DAQmx_Write_RawDataWidth = hex2dec('217D'); % Indicates in bytes the required size of a raw sample to write to the task.
niconst.DAQmx_Write_NumChans = hex2dec('217E'); % Indicates the number of channels that an NI-DAQmx Write function writes to the task. This value is the number of channels in the task.
niconst.DAQmx_Write_DigitalLines_BytesPerChan = hex2dec('217F'); % Indicates the number of bytes expected per channel in a sample for line-based writes. If a channel has fewer lines than this number, NI-DAQmx ignores the extra bytes.

%********** Physical Channel Attributes **********
niconst.DAQmx_PhysicalChan_TEDS_MfgID = hex2dec('21DA'); % Indicates the manufacturer ID of the sensor.
niconst.DAQmx_PhysicalChan_TEDS_ModelNum = hex2dec('21DB'); % Indicates the model number of the sensor.
niconst.DAQmx_PhysicalChan_TEDS_SerialNum = hex2dec('21DC'); % Indicates the serial number of the sensor.
niconst.DAQmx_PhysicalChan_TEDS_VersionNum = hex2dec('21DD'); % Indicates the version number of the sensor.
niconst.DAQmx_PhysicalChan_TEDS_VersionLetter = hex2dec('21DE'); % Indicates the version letter of the sensor.
niconst.DAQmx_PhysicalChan_TEDS_BitStream = hex2dec('21DF'); % Indicates the TEDS binary bitstream without checksums.
niconst.DAQmx_PhysicalChan_TEDS_TemplateIDs = hex2dec('228F'); % Indicates the IDs of the templates in the bitstream in BitStream.


%******************************************************************************
% *** NI-DAQmx Values **********************************************************
% ******************************************************************************/

%******************************************************/
%***Non-Attribute Function Parameter Values ***/
%******************************************************/

%*** Values for the Mode parameter of DAQmxTaskControl ***  
niconst.DAQmx_Val_Task_Start = 0; % Start
niconst.DAQmx_Val_Task_Stop =1; % Stop
niconst.DAQmx_Val_Task_Verify =2; % Verify
niconst.DAQmx_Val_Task_Commit =3; % Commit
niconst.DAQmx_Val_Task_Reserve = 4; % Reserve
niconst.DAQmx_Val_Task_Unreserve = 5; % Unreserve
niconst.DAQmx_Val_Task_Abort = 6; % Abort

%*** Values for the Action parameter of DAQmxControlWatchdogTask ***
niconst.DAQmx_Val_ResetTimer = 0; % Reset Timer
niconst.DAQmx_Val_ClearExpiration =1; % Clear Expiration

%*** Values for the Line Grouping parameter of DAQmxCreateDIChan and DAQmxCreateDOChan ***
niconst.DAQmx_Val_ChanPerLine =0; % One Channel For Each Line
niconst.DAQmx_Val_ChanForAllLines =1; % One Channel For All Lines

%*** Values for the Fill Mode parameter of DAQmxReadAnalogF64, DAQmxReadBinaryI16, DAQmxReadBinaryU16, DAQmxReadBinaryI32, DAQmxReadBinaryU32,
%DAQmxReadDigitalU8, DAQmxReadDigitalU32, DAQmxReadDigitalLines ***
%*** Values for the Data Layout parameter of DAQmxWriteAnalogF64, DAQmxWriteBinaryI16, DAQmxWriteDigitalU8, DAQmxWriteDigitalU32, DAQmxWriteDigitalLines ***
niconst.DAQmx_Val_GroupByChannel = 0; % Group by Channel
niconst.DAQmx_Val_GroupByScanNumber =1; % Group by Scan Number

%*** Values for the Signal Modifiers parameter of DAQmxConnectTerms ***/
niconst.DAQmx_Val_DoNotInvertPolarity =0; % Do not invert polarity
niconst.DAQmx_Val_InvertPolarity = 1; % Invert polarity

%*** Values for the Action paramter of DAQmxCloseExtCal ***
niconst.DAQmx_Val_Action_Commit =0; % Commit
niconst.DAQmx_Val_Action_Cancel =1; % Cancel

%*** Values for the Trigger ID parameter of DAQmxSendSoftwareTrigger ***
niconst.DAQmx_Val_AdvanceTrigger = 12488; % Advance Trigger

%*** Value set for the ActiveEdge parameter of DAQmxCfgSampClkTiming ***
niconst.DAQmx_Val_Rising = 10280; % Rising
niconst.DAQmx_Val_Falling =10171; % Falling

%*** Value set SwitchPathType ***
%*** Value set for the output Path Status parameter of DAQmxSwitchFindPath ***
niconst.DAQmx_Val_PathStatus_Available = 10431; % Path Available
niconst.DAQmx_Val_PathStatus_AlreadyExists = 10432; % Path Already Exists
niconst.DAQmx_Val_PathStatus_Unsupported = 10433; % Path Unsupported
niconst.DAQmx_Val_PathStatus_ChannelInUse =10434; % Channel In Use
niconst.DAQmx_Val_PathStatus_SourceChannelConflict = 10435; % Channel Source Conflict
niconst.DAQmx_Val_PathStatus_ChannelReservedForRouting = 10436; % Channel Reserved for Routing

%*** Value set for the Units parameter of DAQmxCreateAIThrmcplChan, DAQmxCreateAIRTDChan, DAQmxCreateAIThrmstrChanIex, DAQmxCreateAIThrmstrChanVex and DAQmxCreateAITempBuiltInSensorChan ***
niconst.DAQmx_Val_DegC = 10143; % Deg C
niconst.DAQmx_Val_DegF = 10144; % Deg F
niconst.DAQmx_Val_Kelvins =10325; % Kelvins
niconst.DAQmx_Val_DegR = 10145; % Deg R

%*** Value set for the state parameter of DAQmxSetDigitalPowerUpStates ***
niconst.DAQmx_Val_High = 10192; % High
niconst.DAQmx_Val_Low =10214; % Low
niconst.DAQmx_Val_Tristate = 10310; % Tristate

%*** Value set RelayPos ***
%*** Value set for the state parameter of DAQmxSwitchGetSingleRelayPos and DAQmxSwitchGetMultiRelayPos ***
niconst.DAQmx_Val_Open = 10437; % Open
niconst.DAQmx_Val_Closed = 10438; % Closed

%*** Value for the Terminal Config parameter of DAQmxCreateAIVoltageChan, DAQmxCreateAICurrentChan and DAQmxCreateAIVoltageChanWithExcit ***
niconst.DAQmx_Val_Cfg_Default =-1; % Default

%*** Value for the Timeout parameter of DAQmxWaitUntilTaskDone
niconst.DAQmx_Val_WaitInfinitely = -1.0;

%*** Value for the Number of Samples per Channel parameter of DAQmxReadAnalogF64, DAQmxReadBinaryI16, DAQmxReadBinaryU16,
%DAQmxReadBinaryI32, DAQmxReadBinaryU32, DAQmxReadDigitalU8, DAQmxReadDigitalU32,
%DAQmxReadDigitalLines, DAQmxReadCounterF64, DAQmxReadCounterU32 and DAQmxReadRaw ***
niconst.DAQmx_Val_Auto = -1;

%/******************************************************/
%/*** = Attribute Values = ***/
%/******************************************************/

%*** Values for niconst.DAQmx_AI_ACExcit_WireMode ***
%*** Value set ACExcitWireMode ***
niconst.DAQmx_Val_4Wire =4; % 4-Wire
niconst.DAQmx_Val_5Wire =5; % 5-Wire

%*** Values for niconst.DAQmx_AI_MeasType ***
%*** Value set AIMeasurementType ***
niconst.DAQmx_Val_Voltage =10322; % Voltage
niconst.DAQmx_Val_Current =10134; % Current
niconst.DAQmx_Val_Voltage_CustomWithExcitation = 10323; % More:Voltage:Custom with Excitation
niconst.DAQmx_Val_Freq_Voltage = 10181; % Frequency
niconst.DAQmx_Val_Resistance = 10278; % Resistance
niconst.DAQmx_Val_Temp_TC =10303; % Temperature:Thermocouple
niconst.DAQmx_Val_Temp_Thrmstr = 10302; % Temperature:Thermistor
niconst.DAQmx_Val_Temp_RTD = 10301; % Temperature:RTD
niconst.DAQmx_Val_Temp_BuiltInSensor = 10311; % Temperature:Built-in Sensor
niconst.DAQmx_Val_Strain_Gage =10300; % Strain Gage
niconst.DAQmx_Val_Position_LVDT =10352; % Position:LVDT
niconst.DAQmx_Val_Position_RVDT =10353; % Position:RVDT
niconst.DAQmx_Val_Accelerometer =10356; % Accelerometer
niconst.DAQmx_Val_SoundPressure_Microphone = 10354; % Sound Pressure:Microphone
niconst.DAQmx_Val_TEDS_Sensor =12531; % TEDS Sensor

%*** Values for niconst.DAQmx_AO_IdleOutputBehavior ***
%*** Value set AOIdleOutputBehavior ***
niconst.DAQmx_Val_ZeroVolts =12526; % Zero Volts
niconst.DAQmx_Val_HighImpedance =12527; % High Impedance
niconst.DAQmx_Val_MaintainExistingValue =12528; % Maintain Existing Value

%*** Values for niconst.DAQmx_AO_OutputType ***
%*** Value set AOOutputChannelType ***
niconst.DAQmx_Val_Voltage =10322; % Voltage
niconst.DAQmx_Val_Current =10134; % Current

%*** Values for niconst.DAQmx_AI_Accel_SensitivityUnits ***
%*** Value set AccelSensitivityUnits1 ***
niconst.DAQmx_Val_mVoltsPerG = 12509; % mVolts/g
niconst.DAQmx_Val_VoltsPerG =12510; % Volts/g

%*** Values for niconst.DAQmx_AI_Accel_Units ***
%*** Value set AccelUnits2 ***
niconst.DAQmx_Val_AccelUnit_g =10186; % g
niconst.DAQmx_Val_FromCustomScale =10065; % From Custom Scale

%*** Values for niconst.DAQmx_SampQuant_SampMode ***
%*** Value set AcquisitionType ***
niconst.DAQmx_Val_FiniteSamps =10178; % Finite Samples
niconst.DAQmx_Val_ContSamps =10123; % Continuous Samples
niconst.DAQmx_Val_HWTimedSinglePoint = 12522; % Hardware Timed Single Point

%*** Values for niconst.DAQmx_AnlgLvl_PauseTrig_When ***
%*** Value set ActiveLevel ***
niconst.DAQmx_Val_AboveLvl = 10093; % Above Level
niconst.DAQmx_Val_BelowLvl = 10107; % Below Level

%*** Values for niconst.DAQmx_AI_RVDT_Units ***
%*** Value set AngleUnits1 ***
niconst.DAQmx_Val_Degrees =10146; % Degrees
niconst.DAQmx_Val_Radians =10273; % Radians
niconst.DAQmx_Val_FromCustomScale =10065; % From Custom Scale

%*** Values for niconst.DAQmx_CI_AngEncoder_Units ***
%*** Value set AngleUnits2 ***
niconst.DAQmx_Val_Degrees =10146; % Degrees
niconst.DAQmx_Val_Radians =10273; % Radians
niconst.DAQmx_Val_Ticks =10304; % Ticks
niconst.DAQmx_Val_FromCustomScale =10065; % From Custom Scale

%*** Values for niconst.DAQmx_AI_AutoZeroMode ***
%*** Value set AutoZeroType1 ***
niconst.DAQmx_Val_None = 10230; % None
niconst.DAQmx_Val_Once = 10244; % Once

%*** Values for niconst.DAQmx_SwitchScan_BreakMode ***
%*** Value set BreakMode ***
niconst.DAQmx_Val_NoAction = 10227; % No Action
niconst.DAQmx_Val_BreakBeforeMake =10110; % Break Before Make

%*** Values for niconst.DAQmx_AI_Bridge_Cfg ***
%*** Value set BridgeConfiguration1 ***
niconst.DAQmx_Val_FullBridge = 10182; % Full Bridge
niconst.DAQmx_Val_HalfBridge = 10187; % Half Bridge
niconst.DAQmx_Val_QuarterBridge =10270; % Quarter Bridge
niconst.DAQmx_Val_NoBridge = 10228; % No Bridge

%*** Values for niconst.DAQmx_CI_MeasType ***
%*** Value set CIMeasurementType ***
niconst.DAQmx_Val_CountEdges = 10125; % Count Edges
niconst.DAQmx_Val_Freq = 10179; % Frequency
niconst.DAQmx_Val_Period = 10256; % Period
niconst.DAQmx_Val_PulseWidth = 10359; % Pulse Width
niconst.DAQmx_Val_SemiPeriod = 10289; % Semi Period
niconst.DAQmx_Val_Position_AngEncoder =10360; % Position:Angular Encoder
niconst.DAQmx_Val_Position_LinEncoder =10361; % Position:Linear Encoder
niconst.DAQmx_Val_TwoEdgeSep = 10267; % Two Edge Separation

%*** Values for niconst.DAQmx_AI_Thrmcpl_CJCSrc ***
%*** Value set CJCSource1 ***
niconst.DAQmx_Val_BuiltIn =10200; % Built-In
niconst.DAQmx_Val_ConstVal = 10116; % Constant Value
niconst.DAQmx_Val_Chan = 10113; % Channel

%*** Values for niconst.DAQmx_CO_OutputType ***
%*** Value set COOutputType ***
niconst.DAQmx_Val_Pulse_Time = 10269; % Pulse:Time
niconst.DAQmx_Val_Pulse_Freq = 10119; % Pulse:Frequency
niconst.DAQmx_Val_Pulse_Ticks =10268; % Pulse:Ticks

%*** Values for niconst.DAQmx_ChanType ***
%*** Value set ChannelType ***
niconst.DAQmx_Val_AI = 10100; % Analog Input
niconst.DAQmx_Val_AO = 10102; % Analog Output
niconst.DAQmx_Val_DI = 10151; % Digital Input
niconst.DAQmx_Val_DO = 10153; % Digital Output
niconst.DAQmx_Val_CI = 10131; % Counter Input
niconst.DAQmx_Val_CO = 10132; % Counter Output

%*** Values for niconst.DAQmx_CI_CountEdges_Dir ***
%*** Value set CountDirection1 ***
niconst.DAQmx_Val_CountUp =10128; % Count Up
niconst.DAQmx_Val_CountDown =10124; % Count Down
niconst.DAQmx_Val_ExtControlled =10326; % Externally Controlled

%*** Values for niconst.DAQmx_CI_Freq_MeasMeth ***
%*** Values for niconst.DAQmx_CI_Period_MeasMeth ***
%*** Value set CounterFrequencyMethod ***
niconst.DAQmx_Val_LowFreq1Ctr =10105; % Low Frequency with 1 Counter
niconst.DAQmx_Val_HighFreq2Ctr = 10157; % High Frequency with 2 Counters
niconst.DAQmx_Val_LargeRng2Ctr = 10205; % Large Range with 2 Counters

%*** Values for niconst.DAQmx_AI_Coupling ***
%*** Value set Coupling1 ***
niconst.DAQmx_Val_AC = 10045; % AC
niconst.DAQmx_Val_DC = 10050; % DC
niconst.DAQmx_Val_GND =10066; % GND

%*** Values for niconst.DAQmx_AnlgEdge_StartTrig_Coupling ***
%*** Values for niconst.DAQmx_AnlgWin_StartTrig_Coupling ***
%*** Values for niconst.DAQmx_AnlgEdge_RefTrig_Coupling ***
%*** Values for niconst.DAQmx_AnlgWin_RefTrig_Coupling ***
%*** Values for niconst.DAQmx_AnlgLvl_PauseTrig_Coupling ***
%*** Values for niconst.DAQmx_AnlgWin_PauseTrig_Coupling ***
%*** Value set Coupling2 ***
niconst.DAQmx_Val_AC = 10045; % AC
niconst.DAQmx_Val_DC = 10050; % DC

%*** Values for niconst.DAQmx_AI_CurrentShunt_Loc ***
%*** Value set CurrentShuntResistorLocation1 ***
niconst.DAQmx_Val_Internal = 10200; % Internal
niconst.DAQmx_Val_External = 10167; % External

%*** Values for niconst.DAQmx_AI_Current_Units ***
%*** Values for niconst.DAQmx_AO_Current_Units ***
%*** Value set CurrentUnits1 ***
niconst.DAQmx_Val_Amps = 10342; % Amps
niconst.DAQmx_Val_FromCustomScale =10065; % From Custom Scale
niconst.DAQmx_Val_FromTEDS = 12516; % From TEDS

%*** Value set CurrentUnits2 ***
niconst.DAQmx_Val_Amps = 10342; % Amps
niconst.DAQmx_Val_FromCustomScale =10065; % From Custom Scale

%*** Values for niconst.DAQmx_AI_DataXferMech ***
%*** Values for niconst.DAQmx_AO_DataXferMech ***
%*** Values for niconst.DAQmx_DI_DataXferMech ***
%*** Values for niconst.DAQmx_DO_DataXferMech ***
%*** Values for niconst.DAQmx_CI_DataXferMech ***
%*** Value set DataTransferMechanism ***
niconst.DAQmx_Val_DMA =10054; % DMA
niconst.DAQmx_Val_Interrupts = 10204; % Interrupts
niconst.DAQmx_Val_ProgrammedIO = 10264; % Programmed I/O

%*** Values for niconst.DAQmx_Watchdog_DO_ExpirState ***
%*** Value set DigitalLineState ***
niconst.DAQmx_Val_High = 10192; % High
niconst.DAQmx_Val_Low =10214; % Low
niconst.DAQmx_Val_Tristate = 10310; % Tristate
niconst.DAQmx_Val_NoChange = 10160; % No Change

%*** Values for niconst.DAQmx_StartTrig_DelayUnits ***
%*** Value set DigitalWidthUnits1 ***
niconst.DAQmx_Val_SampClkPeriods = 10286; % Sample Clock Periods
niconst.DAQmx_Val_Seconds =10364; % Seconds
niconst.DAQmx_Val_Ticks =10304; % Ticks

%*** Values for niconst.DAQmx_DelayFromSampClk_DelayUnits ***
%*** Value set DigitalWidthUnits2 ***
niconst.DAQmx_Val_Seconds =10364; % Seconds
niconst.DAQmx_Val_Ticks =10304; % Ticks

%*** Values for niconst.DAQmx_Exported_AdvTrig_Pulse_WidthUnits ***
%*** Value set DigitalWidthUnits3 ***
niconst.DAQmx_Val_Seconds =10364; % Seconds

%*** Values for niconst.DAQmx_CI_Freq_StartingEdge ***
%*** Values for niconst.DAQmx_CI_Period_StartingEdge ***
%*** Values for niconst.DAQmx_CI_CountEdges_ActiveEdge ***
%*** Values for niconst.DAQmx_CI_PulseWidth_StartingEdge ***
%*** Values for niconst.DAQmx_CI_TwoEdgeSep_FirstEdge ***
%*** Values for niconst.DAQmx_CI_TwoEdgeSep_SecondEdge ***
%*** Values for niconst.DAQmx_CI_CtrTimebaseActiveEdge ***
%*** Values for niconst.DAQmx_CO_CtrTimebaseActiveEdge ***
%*** Values for niconst.DAQmx_SampClk_ActiveEdge ***
%*** Values for niconst.DAQmx_SampClk_Timebase_ActiveEdge ***
%*** Values for niconst.DAQmx_AIConv_ActiveEdge ***
%*** Values for niconst.DAQmx_DigEdge_StartTrig_Edge ***
%*** Values for niconst.DAQmx_DigEdge_RefTrig_Edge ***
%*** Values for niconst.DAQmx_DigEdge_AdvTrig_Edge ***
%*** Values for niconst.DAQmx_DigEdge_ArmStartTrig_Edge ***
%*** Values for niconst.DAQmx_DigEdge_WatchdogExpirTrig_Edge ***
%*** Value set Edge1 ***
niconst.DAQmx_Val_Rising = 10280; % Rising
niconst.DAQmx_Val_Falling =10171; % Falling

%*** Values for niconst.DAQmx_CI_Encoder_DecodingType ***
%*** Value set EncoderType2 ***
niconst.DAQmx_Val_X1 = 10090; % X1
niconst.DAQmx_Val_X2 = 10091; % X2
niconst.DAQmx_Val_X4 = 10092; % X4
niconst.DAQmx_Val_TwoPulseCounting = 10313; % Two Pulse Counting

%*** Values for niconst.DAQmx_CI_Encoder_ZIndexPhase ***
%*** Value set EncoderZIndexPhase1 ***
niconst.DAQmx_Val_AHighBHigh = 10040; % A High B High
niconst.DAQmx_Val_AHighBLow =10041; % A High B Low
niconst.DAQmx_Val_ALowBHigh =10042; % A Low B High
niconst.DAQmx_Val_ALowBLow = 10043; % A Low B Low

%*** Values for niconst.DAQmx_AI_Excit_DCorAC ***
%*** Value set ExcitationDCorAC ***
niconst.DAQmx_Val_DC = 10050; % DC
niconst.DAQmx_Val_AC = 10045; % AC

%*** Values for niconst.DAQmx_AI_Excit_Src ***
%*** Value set ExcitationSource ***
niconst.DAQmx_Val_Internal = 10200; % Internal
niconst.DAQmx_Val_External = 10167; % External
niconst.DAQmx_Val_None = 10230; % None

%*** Values for niconst.DAQmx_AI_Excit_VoltageOrCurrent ***
%*** Value set ExcitationVoltageOrCurrent ***
niconst.DAQmx_Val_Voltage =10322; % Voltage
niconst.DAQmx_Val_Current =10134; % Current

%*** Values for niconst.DAQmx_Exported_CtrOutEvent_OutputBehavior ***
%*** Value set ExportActions2 ***
niconst.DAQmx_Val_Pulse =10265; % Pulse
niconst.DAQmx_Val_Toggle = 10307; % Toggle

%*** Values for niconst.DAQmx_Exported_SampClk_OutputBehavior ***
%*** Value set ExportActions3 ***
niconst.DAQmx_Val_Pulse =10265; % Pulse
niconst.DAQmx_Val_Lvl =10210; % Level

%*** Values for niconst.DAQmx_AI_Freq_Units ***
%*** Value set FrequencyUnits ***
niconst.DAQmx_Val_Hz = 10373; % Hz
niconst.DAQmx_Val_FromCustomScale =10065; % From Custom Scale

%*** Values for niconst.DAQmx_CO_Pulse_Freq_Units ***
%*** Value set FrequencyUnits2 ***
niconst.DAQmx_Val_Hz = 10373; % Hz

%*** Values for niconst.DAQmx_CI_Freq_Units ***
%*** Value set FrequencyUnits3 ***
niconst.DAQmx_Val_Hz = 10373; % Hz
niconst.DAQmx_Val_Ticks =10304; % Ticks
niconst.DAQmx_Val_FromCustomScale =10065; % From Custom Scale


%*** Values for niconst.DAQmx_AI_DataXferReqCond ***
%*** Values for niconst.DAQmx_DI_DataXferReqCond ***
%*** Value set InputDataTransferCondition ***
niconst.DAQmx_Val_OnBrdMemMoreThanHalfFull = 10237; % On Board Memory More than Half Full
niconst.DAQmx_Val_OnBrdMemNotEmpty = 10241; % On Board Memory Not Empty

%*** Values for niconst.DAQmx_AI_TermCfg ***
%*** Value set InputTermCfg ***
niconst.DAQmx_Val_RSE =10083; % RSE
niconst.DAQmx_Val_NRSE = 10078; % NRSE
niconst.DAQmx_Val_Diff = 10106; % Differential
niconst.DAQmx_Val_PseudoDiff = 12529; % Pseudodifferential

%*** Values for niconst.DAQmx_AI_LVDT_SensitivityUnits ***
%*** Value set LVDTSensitivityUnits1 ***
niconst.DAQmx_Val_mVoltsPerVoltPerMillimeter = 12506; % mVolts/Volt/mMeter
niconst.DAQmx_Val_mVoltsPerVoltPerMilliInch =12505; % mVolts/Volt/0.001 Inch

%*** Values for niconst.DAQmx_AI_LVDT_Units ***
%*** Value set LengthUnits2 ***
niconst.DAQmx_Val_Meters = 10219; % Meters
niconst.DAQmx_Val_Inches = 10379; % Inches
niconst.DAQmx_Val_FromCustomScale =10065; % From Custom Scale

%*** Values for niconst.DAQmx_CI_LinEncoder_Units ***
%*** Value set LengthUnits3 ***
niconst.DAQmx_Val_Meters = 10219; % Meters
niconst.DAQmx_Val_Inches = 10379; % Inches
niconst.DAQmx_Val_Ticks =10304; % Ticks
niconst.DAQmx_Val_FromCustomScale =10065; % From Custom Scale

%*** Values for niconst.DAQmx_CI_OutputState ***
%*** Values for niconst.DAQmx_CO_Pulse_IdleState ***
%*** Values for niconst.DAQmx_CO_OutputState ***
%*** Values for niconst.DAQmx_Exported_CtrOutEvent_Toggle_IdleState ***
%*** Values for niconst.DAQmx_DigLvl_PauseTrig_When ***
%*** Value set Level1 ***
niconst.DAQmx_Val_High = 10192; % High
niconst.DAQmx_Val_Low =10214; % Low

%*** Values for niconst.DAQmx_AIConv_Timebase_Src ***
%*** Value set MIOAIConvertTbSrc ***
niconst.DAQmx_Val_SameAsSampTimebase = 10284; % Same as Sample Timebase
niconst.DAQmx_Val_SameAsMasterTimebase = 10282; % Same as Master Timebase
niconst.DAQmx_Val_20MHzTimebase =12537; % 20MHz Timebase

%*** Values for niconst.DAQmx_AO_DataXferReqCond ***
%*** Values for niconst.DAQmx_DO_DataXferReqCond ***
%*** Value set OutputDataTransferCondition ***
niconst.DAQmx_Val_OnBrdMemEmpty =10235; % On Board Memory Empty
niconst.DAQmx_Val_OnBrdMemHalfFullOrLess = 10239; % On Board Memory Half Full or Less
niconst.DAQmx_Val_OnBrdMemNotFull =10242; % On Board Memory Less than Full

%*** Values for niconst.DAQmx_AO_TermCfg ***
%*** Value set OutputTermCfg ***
niconst.DAQmx_Val_RSE =10083; % RSE
niconst.DAQmx_Val_Diff = 10106; % Differential
niconst.DAQmx_Val_PseudoDiff = 12529; % Pseudodifferential

%*** Values for niconst.DAQmx_Read_OverWrite ***
%*** Value set OverwriteMode1 ***
niconst.DAQmx_Val_OverwriteUnreadSamps = 10252; % Overwrite Unread Samples
niconst.DAQmx_Val_DoNotOverwriteUnreadSamps =10159; % Do Not Overwrite Unread Samples

%*** Values for niconst.DAQmx_Exported_AIConvClk_Pulse_Polarity ***
%*** Values for niconst.DAQmx_Exported_AdvTrig_Pulse_Polarity ***
%*** Values for niconst.DAQmx_Exported_AdvCmpltEvent_Pulse_Polarity ***
%*** Values for niconst.DAQmx_Exported_AIHoldCmpltEvent_PulsePolarity ***
%*** Values for niconst.DAQmx_Exported_CtrOutEvent_Pulse_Polarity ***
%*** Value set Polarity2 ***
niconst.DAQmx_Val_ActiveHigh = 10095; % Active High
niconst.DAQmx_Val_ActiveLow =10096; % Active Low


%*** Values for niconst.DAQmx_AI_RTD_Type ***
%*** Value set RTDType1 ***
niconst.DAQmx_Val_Pt3750 = 12481; % Pt3750
niconst.DAQmx_Val_Pt3851 = 10071; % Pt3851
niconst.DAQmx_Val_Pt3911 = 12482; % Pt3911
niconst.DAQmx_Val_Pt3916 = 10069; % Pt3916
niconst.DAQmx_Val_Pt3920 = 10053; % Pt3920
niconst.DAQmx_Val_Pt3928 = 12483; % Pt3928
niconst.DAQmx_Val_Custom = 10137; % Custom

%*** Values for niconst.DAQmx_AI_RVDT_SensitivityUnits ***
%*** Value set RVDTSensitivityUnits1 ***
niconst.DAQmx_Val_mVoltsPerVoltPerDegree = 12507; % mVolts/Volt/Degree
niconst.DAQmx_Val_mVoltsPerVoltPerRadian = 12508; % mVolts/Volt/Radian

%*** Values for niconst.DAQmx_Read_RelativeTo ***
%*** Value set ReadRelativeTo ***
niconst.DAQmx_Val_FirstSample =10424; % First Sample
niconst.DAQmx_Val_CurrReadPos =10425; % Current Read Position
niconst.DAQmx_Val_RefTrig =10426; % Reference Trigger
niconst.DAQmx_Val_FirstPretrigSamp = 10427; % First Pretrigger Sample
niconst.DAQmx_Val_MostRecentSamp = 10428; % Most Recent Sample


%*** Values for niconst.DAQmx_Write_RegenMode ***
%*** Value set RegenerationMode1 ***
niconst.DAQmx_Val_AllowRegen = 10097; % Allow Regeneration
niconst.DAQmx_Val_DoNotAllowRegen =10158; % Do Not Allow Regeneration

%*** Values for niconst.DAQmx_AI_ResistanceCfg ***
%*** Value set ResistanceConfiguration ***
niconst.DAQmx_Val_2Wire =2; % 2-Wire
niconst.DAQmx_Val_3Wire =3; % 3-Wire
niconst.DAQmx_Val_4Wire =4; % 4-Wire

%*** Values for niconst.DAQmx_AI_Resistance_Units ***
%*** Value set ResistanceUnits1 ***
niconst.DAQmx_Val_Ohms = 10384; % Ohms
niconst.DAQmx_Val_FromCustomScale =10065; % From Custom Scale
niconst.DAQmx_Val_FromTEDS = 12516; % From TEDS

%*** Value set ResistanceUnits2 ***
niconst.DAQmx_Val_Ohms = 10384; % Ohms
niconst.DAQmx_Val_FromCustomScale =10065; % From Custom Scale

%*** Values for niconst.DAQmx_AI_ResolutionUnits ***
%*** Values for niconst.DAQmx_AO_ResolutionUnits ***
%*** Value set ResolutionType1 ***
niconst.DAQmx_Val_Bits = 10109; % Bits

%*** Values for niconst.DAQmx_SampTimingType ***
%*** Value set SampleTimingType ***
niconst.DAQmx_Val_SampClk =10388; % Sample Clock
niconst.DAQmx_Val_Handshake =10389; % Handshake
niconst.DAQmx_Val_Implicit = 10451; % Implicit
niconst.DAQmx_Val_OnDemand = 10390; % On Demand
niconst.DAQmx_Val_ChangeDetection =12504; % Change Detection

%*** Values for niconst.DAQmx_Scale_Type ***
%*** Value set ScaleType ***
niconst.DAQmx_Val_Linear = 10447; % Linear
niconst.DAQmx_Val_MapRanges =10448; % Map Ranges
niconst.DAQmx_Val_Polynomial = 10449; % Polynomial
niconst.DAQmx_Val_Table =10450; % Table

%*** Values for niconst.DAQmx_AI_Bridge_ShuntCal_Select ***
%*** Value set ShuntCalSelect ***
niconst.DAQmx_Val_A =12513; % A
niconst.DAQmx_Val_B =12514; % B
niconst.DAQmx_Val_AandB =12515; % A and B

%*** Value set Signal ***
niconst.DAQmx_Val_AIConvertClock = 12484; % AI Convert Clock
niconst.DAQmx_Val_10MHzRefClock =12536; % 10MHz Reference Clock
niconst.DAQmx_Val_20MHzTimebaseClock = 12486; % 20MHz Timebase Clock
niconst.DAQmx_Val_SampleClock =12487; % Sample Clock
niconst.DAQmx_Val_AdvanceTrigger = 12488; % Advance Trigger
niconst.DAQmx_Val_ReferenceTrigger = 12490; % Reference Trigger
niconst.DAQmx_Val_StartTrigger = 12491; % Start Trigger
niconst.DAQmx_Val_AdvCmpltEvent =12492; % Advance Complete Event
niconst.DAQmx_Val_AIHoldCmpltEvent = 12493; % AI Hold Complete Event
niconst.DAQmx_Val_CounterOutputEvent = 12494; % Counter Output Event
niconst.DAQmx_Val_ChangeDetectionEvent = 12511; % Change Detection Event
niconst.DAQmx_Val_WDTExpiredEvent =12512; % Watchdog Timer Expired Event

%*** Values for niconst.DAQmx_AnlgEdge_StartTrig_Slope ***
%*** Values for niconst.DAQmx_AnlgEdge_RefTrig_Slope ***
%*** Value set Slope1 ***
niconst.DAQmx_Val_RisingSlope =10280; % Rising
niconst.DAQmx_Val_FallingSlope = 10171; % Falling

%*** Values for niconst.DAQmx_AI_SoundPressure_Units ***
%*** Value set SoundPressureUnits1 ***
niconst.DAQmx_Val_Pascals =10081; % Pascals
niconst.DAQmx_Val_FromCustomScale =10065; % From Custom Scale

%*** Values for niconst.DAQmx_AI_Lowpass_SwitchCap_ClkSrc ***
%*** Values for niconst.DAQmx_AO_DAC_Ref_Src ***
%*** Values for niconst.DAQmx_AO_DAC_Offset_Src ***
%*** Value set SourceSelection ***
niconst.DAQmx_Val_Internal = 10200; % Internal
niconst.DAQmx_Val_External = 10167; % External

%*** Values for niconst.DAQmx_AI_StrainGage_Cfg ***
%*** Value set StrainGageBridgeType1 ***
niconst.DAQmx_Val_FullBridgeI =10183; % Full Bridge I
niconst.DAQmx_Val_FullBridgeII = 10184; % Full Bridge II
niconst.DAQmx_Val_FullBridgeIII =10185; % Full Bridge III
niconst.DAQmx_Val_HalfBridgeI =10188; % Half Bridge I
niconst.DAQmx_Val_HalfBridgeII = 10189; % Half Bridge II
niconst.DAQmx_Val_QuarterBridgeI = 10271; % Quarter Bridge I
niconst.DAQmx_Val_QuarterBridgeII =10272; % Quarter Bridge II

%*** Values for niconst.DAQmx_AI_Strain_Units ***
%*** Value set StrainUnits1 ***
niconst.DAQmx_Val_Strain = 10299; % Strain
niconst.DAQmx_Val_FromCustomScale =10065; % From Custom Scale

%*** Values for niconst.DAQmx_SwitchScan_RepeatMode ***
%*** Value set SwitchScanRepeatMode ***
niconst.DAQmx_Val_Finite = 10172; % Finite
niconst.DAQmx_Val_Cont = 10117; % Continuous

%*** Values for niconst.DAQmx_SwitchChan_Usage ***
%*** Value set SwitchUsageTypes ***
niconst.DAQmx_Val_Source = 10439; % Source
niconst.DAQmx_Val_Load = 10440; % Load
niconst.DAQmx_Val_ReservedForRouting = 10441; % Reserved for Routing

%*** Value set TEDSUnits ***
niconst.DAQmx_Val_FromCustomScale =10065; % From Custom Scale
niconst.DAQmx_Val_FromTEDS = 12516; % From TEDS

%*** Values for niconst.DAQmx_AI_Temp_Units ***
%*** Value set TemperatureUnits1 ***
niconst.DAQmx_Val_DegC = 10143; % Deg C
niconst.DAQmx_Val_DegF = 10144; % Deg F
niconst.DAQmx_Val_Kelvins =10325; % Kelvins
niconst.DAQmx_Val_DegR = 10145; % Deg R
niconst.DAQmx_Val_FromCustomScale =10065; % From Custom Scale

%*** Values for niconst.DAQmx_AI_Thrmcpl_Type ***
%*** Value set ThermocoupleType1 ***
niconst.DAQmx_Val_J_Type_TC =10072; % J
niconst.DAQmx_Val_K_Type_TC =10073; % K
niconst.DAQmx_Val_N_Type_TC =10077; % N
niconst.DAQmx_Val_R_Type_TC =10082; % R
niconst.DAQmx_Val_S_Type_TC =10085; % S
niconst.DAQmx_Val_T_Type_TC =10086; % T
niconst.DAQmx_Val_B_Type_TC =10047; % B
niconst.DAQmx_Val_E_Type_TC =10055; % E

%*** Values for niconst.DAQmx_CO_Pulse_Time_Units ***
%*** Value set TimeUnits2 ***
niconst.DAQmx_Val_Seconds =10364; % Seconds

%*** Values for niconst.DAQmx_CI_Period_Units ***
%*** Values for niconst.DAQmx_CI_PulseWidth_Units ***
%*** Values for niconst.DAQmx_CI_TwoEdgeSep_Units ***
%*** Values for niconst.DAQmx_CI_SemiPeriod_Units ***
%*** Value set TimeUnits3 ***
niconst.DAQmx_Val_Seconds =10364; % Seconds
niconst.DAQmx_Val_Ticks =10304; % Ticks
niconst.DAQmx_Val_FromCustomScale =10065; % From Custom Scale

%*** Values for niconst.DAQmx_RefTrig_Type ***
%*** Value set TriggerType1 ***
niconst.DAQmx_Val_AnlgEdge = 10099; % Analog Edge
niconst.DAQmx_Val_DigEdge =10150; % Digital Edge
niconst.DAQmx_Val_AnlgWin =10103; % Analog Window
niconst.DAQmx_Val_None = 10230; % None

%*** Values for niconst.DAQmx_ArmStartTrig_Type ***
%*** Values for niconst.DAQmx_WatchdogExpirTrig_Type ***
%*** Value set TriggerType4 ***
niconst.DAQmx_Val_DigEdge =10150; % Digital Edge
niconst.DAQmx_Val_None = 10230; % None

%*** Values for niconst.DAQmx_AdvTrig_Type ***
%*** Value set TriggerType5 ***
niconst.DAQmx_Val_DigEdge =10150; % Digital Edge
niconst.DAQmx_Val_Software = 10292; % Software
niconst.DAQmx_Val_None = 10230; % None

%*** Values for niconst.DAQmx_PauseTrig_Type ***
%*** Value set TriggerType6 ***
niconst.DAQmx_Val_AnlgLvl =10101; % Analog Level
niconst.DAQmx_Val_AnlgWin =10103; % Analog Window
niconst.DAQmx_Val_DigLvl = 10152; % Digital Level
niconst.DAQmx_Val_None = 10230; % None

%*** Values for niconst.DAQmx_StartTrig_Type ***
%*** Value set TriggerType8 ***
niconst.DAQmx_Val_AnlgEdge = 10099; % Analog Edge
niconst.DAQmx_Val_DigEdge =10150; % Digital Edge
niconst.DAQmx_Val_AnlgWin =10103; % Analog Window
niconst.DAQmx_Val_None = 10230; % None

%*** Values for niconst.DAQmx_Scale_PreScaledUnits ***
%*** Value set UnitsPreScaled ***
niconst.DAQmx_Val_Volts =10348; % Volts
niconst.DAQmx_Val_Amps = 10342; % Amps
niconst.DAQmx_Val_DegF = 10144; % Deg F
niconst.DAQmx_Val_DegC = 10143; % Deg C
niconst.DAQmx_Val_DegR = 10145; % Deg R
niconst.DAQmx_Val_Kelvins =10325; % Kelvins
niconst.DAQmx_Val_Strain = 10299; % Strain
niconst.DAQmx_Val_Ohms = 10384; % Ohms
niconst.DAQmx_Val_Hz = 10373; % Hz
niconst.DAQmx_Val_Seconds =10364; % Seconds
niconst.DAQmx_Val_Meters = 10219; % Meters
niconst.DAQmx_Val_Inches = 10379; % Inches
niconst.DAQmx_Val_Degrees =10146; % Degrees
niconst.DAQmx_Val_Radians =10273; % Radians
niconst.DAQmx_Val_g =10186; % g
niconst.DAQmx_Val_Pascals =10081; % Pascals
niconst.DAQmx_Val_FromTEDS = 12516; % From TEDS

%*** Values for niconst.DAQmx_AI_Voltage_Units ***
%*** Value set VoltageUnits1 ***
niconst.DAQmx_Val_Volts =10348; % Volts
niconst.DAQmx_Val_FromCustomScale =10065; % From Custom Scale
niconst.DAQmx_Val_FromTEDS = 12516; % From TEDS

%*** Values for niconst.DAQmx_AO_Voltage_Units ***
%*** Value set VoltageUnits2 ***
niconst.DAQmx_Val_Volts =10348; % Volts
niconst.DAQmx_Val_FromCustomScale =10065; % From Custom Scale

%*** Values for niconst.DAQmx_ReadWaitMode ***
%*** Value set WaitMode ***
niconst.DAQmx_Val_WaitForInterrupt = 12523; % Wait For Interrupt
niconst.DAQmx_Val_Poll = 12524; % Poll
niconst.DAQmx_Val_Yield =12525; % Yield

%*** Values for niconst.DAQmx_AnlgWin_StartTrig_When ***
%*** Values for niconst.DAQmx_AnlgWin_RefTrig_When ***
%*** Value set WindowTriggerCondition1 ***
niconst.DAQmx_Val_EnteringWin =10163; % Entering Window
niconst.DAQmx_Val_LeavingWin = 10208; % Leaving Window

%*** Values for niconst.DAQmx_AnlgWin_PauseTrig_When ***
%*** Value set WindowTriggerCondition2 ***
niconst.DAQmx_Val_InsideWin =10199; % Inside Window
niconst.DAQmx_Val_OutsideWin = 10251; % Outside Window

%*** Value set WriteBasicTEDSOptions ***
niconst.DAQmx_Val_WriteToEEPROM =12538; % Write To EEPROM
niconst.DAQmx_Val_WriteToPROM =12539; % Write To PROM Once
niconst.DAQmx_Val_DoNotWrite = 12540; % Do Not Write

%*** Values for niconst.DAQmx_Write_RelativeTo ***
%*** Value set WriteRelativeTo ***
niconst.DAQmx_Val_FirstSample =10424; % First Sample
niconst.DAQmx_Val_CurrWritePos = 10430; % Current Write Position



%/******************************************************************************
% *** NI-DAQmx Error Codes *****************************************************
% ******************************************************************************/

niconst.DAQmxSuccess = (0);

%DAQmxFailed(error); = ((error);<0);

% Error and Warning Codes
niconst.DAQmxErrorWriteNotCompleteBeforeSampClk =(-209801);
niconst.DAQmxErrorReadNotCompleteBeforeSampClk = (-209800);
niconst.DAQmxErrorEveryNSamplesEventNotSupportedForNonBufferedTasks =(-200848);
niconst.DAQmxErrorBufferedAndDataXferPIO = (-200847);
niconst.DAQmxErrorCannotWriteWhenAutoStartFalseAndTaskNotRunning = (-200846);
niconst.DAQmxErrorNonBufferedAndDataXferInterrupts = (-200845);
niconst.DAQmxErrorWriteFailedMultipleCtrsWithFREQOUT = (-200844);
niconst.DAQmxErrorReadNotCompleteBefore3SampClkEdges = (-200843);
niconst.DAQmxErrorCtrHWTimedSinglePointAndDataXferNotProgIO =(-200842);
niconst.DAQmxErrorPrescalerNot1ForInputTerminal =(-200841);
niconst.DAQmxErrorPrescalerNot1ForTimebaseSrc =(-200840);
niconst.DAQmxErrorSampClkTimingTypeWhenTristateIsFalse = (-200839);
niconst.DAQmxErrorOutputBufferSizeNotMultOfXferSize =(-200838);
niconst.DAQmxErrorSampPerChanNotMultOfXferSize = (-200837);
niconst.DAQmxErrorWriteToTEDSFailed =(-200836);
niconst.DAQmxErrorSCXIDevNotUsablePowerTurnedOff = (-200835);
niconst.DAQmxErrorCannotReadWhenAutoStartFalseBufSizeZeroAndTaskNotRunning = (-200834);
niconst.DAQmxErrorCannotReadWhenAutoStartFalseHWTimedSinglePtAndTaskNotRunning = (-200833);
niconst.DAQmxErrorCannotReadWhenAutoStartFalseOnDemandAndTaskNotRunning =(-200832);
niconst.DAQmxErrorSimultaneousAOWhenNotOnDemandTiming =(-200831);
niconst.DAQmxErrorMemMapAndSimultaneousAO =(-200830);
niconst.DAQmxErrorWriteFailedMultipleCOOutputTypes = (-200829);
niconst.DAQmxErrorWriteToTEDSNotSupportedOnRT =(-200828);
niconst.DAQmxErrorVirtualTEDSDataFileError = (-200827);
niconst.DAQmxErrorTEDSSensorDataError =(-200826);
niconst.DAQmxErrorDataSizeMoreThanSizeOfEEPROMOnTEDS = (-200825);
niconst.DAQmxErrorPROMOnTEDSContainsBasicTEDSData =(-200824);
niconst.DAQmxErrorPROMOnTEDSAlreadyWritten = (-200823);
niconst.DAQmxErrorTEDSDoesNotContainPROM = (-200822);
niconst.DAQmxErrorHWTimedSinglePointNotSupportedAI = (-200821);
niconst.DAQmxErrorHWTimedSinglePointOddNumChansInAITask =(-200820);
niconst.DAQmxErrorCantUseOnlyOnBoardMemWithProgrammedIO =(-200819);
niconst.DAQmxErrorSwitchDevShutDownDueToHighTemp = (-200818);
niconst.DAQmxErrorExcitationNotSupportedWhenTermCfgDiff =(-200817);
niconst.DAQmxErrorTEDSMinElecValGEMaxElecVal = (-200816);
niconst.DAQmxErrorTEDSMinPhysValGEMaxPhysVal = (-200815);
niconst.DAQmxErrorCIOnboardClockNotSupportedAsInputTerm =(-200814);
niconst.DAQmxErrorInvalidSampModeForPositionMeas = (-200813);
niconst.DAQmxErrorTrigWhenAOHWTimedSinglePtSampMode =(-200812);
niconst.DAQmxErrorDAQmxCantUseStringDueToUnknownChar = (-200811);
niconst.DAQmxErrorDAQmxCantRetrieveStringDueToUnknownChar =(-200810);
niconst.DAQmxErrorClearTEDSNotSupportedOnRT =(-200809);
niconst.DAQmxErrorCfgTEDSNotSupportedOnRT =(-200808);
niconst.DAQmxErrorProgFilterClkCfgdToDifferentMinPulseWidthBySameTask1PerDev = (-200807);
niconst.DAQmxErrorProgFilterClkCfgdToDifferentMinPulseWidthByAnotherTask1PerDev = (-200806);
niconst.DAQmxErrorNoLastExtCalDateTimeLastExtCalNotDAQmx = (-200804);
niconst.DAQmxErrorCannotWriteNotStartedAutoStartFalseNotOnDemandHWTimedSglPt = (-200803);
niconst.DAQmxErrorCannotWriteNotStartedAutoStartFalseNotOnDemandBufSizeZero =(-200802);
niconst.DAQmxErrorCOInvalidTimingSrcDueToSignal =(-200801);
niconst.DAQmxErrorCIInvalidTimingSrcForSampClkDueToSampTimingType =(-200800);
niconst.DAQmxErrorCIInvalidTimingSrcForEventCntDueToSampMode = (-200799);
niconst.DAQmxErrorNoChangeDetectOnNonInputDigLineForDev =(-200798);
niconst.DAQmxErrorEmptyStringTermNameNotSupported =(-200797);
niconst.DAQmxErrorMemMapEnabledForHWTimedNonBufferedAO = (-200796);
niconst.DAQmxErrorDevOnboardMemOverflowDuringHWTimedNonBufferedGen = (-200795);
niconst.DAQmxErrorCODAQmxWriteMultipleChans =(-200794);
niconst.DAQmxErrorCantMaintainExistingValueAOSync =(-200793);
niconst.DAQmxErrorMStudioMultiplePhysChansNotSupported = (-200792);
niconst.DAQmxErrorCantConfigureTEDSForChan = (-200791);
niconst.DAQmxErrorWriteDataTypeTooSmall =(-200790);
niconst.DAQmxErrorReadDataTypeTooSmall = (-200789);
niconst.DAQmxErrorMeasuredBridgeOffsetTooHigh =(-200788);
niconst.DAQmxErrorStartTrigConflictWithCOHWTimedSinglePt = (-200787);
niconst.DAQmxErrorSampClkRateExtSampClkTimebaseRateMismatch =(-200786);
niconst.DAQmxErrorInvalidTimingSrcDueToSampTimingType =(-200785);
niconst.DAQmxErrorVirtualTEDSFileNotFound =(-200784);
niconst.DAQmxErrorMStudioNoForwardPolyScaleCoeffs =(-200783);
niconst.DAQmxErrorMStudioNoReversePolyScaleCoeffs =(-200782);
niconst.DAQmxErrorMStudioNoPolyScaleCoeffsUseCalc =(-200781);
niconst.DAQmxErrorMStudioNoForwardPolyScaleCoeffsUseCalc = (-200780);
niconst.DAQmxErrorMStudioNoReversePolyScaleCoeffsUseCalc = (-200779);
niconst.DAQmxErrorCOSampModeSampTimingTypeSampClkConflict =(-200778);
niconst.DAQmxErrorDevCannotProduceMinPulseWidth =(-200777);
niconst.DAQmxErrorCannotProduceMinPulseWidthGivenPropertyValues =(-200776);
niconst.DAQmxErrorTermCfgdToDifferentMinPulseWidthByAnotherTask =(-200775);
niconst.DAQmxErrorTermCfgdToDifferentMinPulseWidthByAnotherProperty =(-200774);
niconst.DAQmxErrorDigSyncNotAvailableOnTerm =(-200773);
niconst.DAQmxErrorDigFilterNotAvailableOnTerm =(-200772);
niconst.DAQmxErrorDigFilterEnabledMinPulseWidthNotCfg =(-200771);
niconst.DAQmxErrorDigFilterAndSyncBothEnabled =(-200770);
niconst.DAQmxErrorHWTimedSinglePointAOAndDataXferNotProgIO = (-200769);
niconst.DAQmxErrorNonBufferedAOAndDataXferNotProgIO =(-200768);
niconst.DAQmxErrorProgIODataXferForBufferedAO =(-200767);
niconst.DAQmxErrorTEDSLegacyTemplateIDInvalidOrUnsupported = (-200766);
niconst.DAQmxErrorTEDSMappingMethodInvalidOrUnsupported =(-200765);
niconst.DAQmxErrorTEDSLinearMappingSlopeZero = (-200764);
niconst.DAQmxErrorAIInputBufferSizeNotMultOfXferSize = (-200763);
niconst.DAQmxErrorNoSyncPulseExtSampClkTimebase =(-200762);
niconst.DAQmxErrorNoSyncPulseAnotherTaskRunning =(-200761);
niconst.DAQmxErrorAOMinMaxNotInGainRange = (-200760);
niconst.DAQmxErrorAOMinMaxNotInDACRange =(-200759);
niconst.DAQmxErrorDevOnlySupportsSampClkTimingAO = (-200758);
niconst.DAQmxErrorDevOnlySupportsSampClkTimingAI = (-200757);
niconst.DAQmxErrorTEDSIncompatibleSensorAndMeasType =(-200756);
niconst.DAQmxErrorTEDSMultipleCalTemplatesNotSupported = (-200755);
niconst.DAQmxErrorTEDSTemplateParametersNotSupported = (-200754);
niconst.DAQmxErrorParsingTEDSData =(-200753);
niconst.DAQmxErrorMultipleActivePhysChansNotSupported =(-200752);
niconst.DAQmxErrorNoChansSpecdForChangeDetect =(-200751);
niconst.DAQmxErrorInvalidCalVoltageForGivenGain =(-200750);
niconst.DAQmxErrorInvalidCalGain = (-200749);
niconst.DAQmxErrorMultipleWritesBetweenSampClks =(-200748);
niconst.DAQmxErrorInvalidAcqTypeForFREQOUT = (-200747);
niconst.DAQmxErrorSuitableTimebaseNotFoundTimeCombo2 = (-200746);
niconst.DAQmxErrorSuitableTimebaseNotFoundFrequencyCombo2 =(-200745);
niconst.DAQmxErrorRefClkRateRefClkSrcMismatch =(-200744);
niconst.DAQmxErrorNoTEDSTerminalBlock =(-200743);
niconst.DAQmxErrorCorruptedTEDSMemory =(-200742);
niconst.DAQmxErrorTEDSNotSupported = (-200741);
niconst.DAQmxErrorTimingSrcTaskStartedBeforeTimedLoop =(-200740);
niconst.DAQmxErrorPropertyNotSupportedForTimingSrc = (-200739);
niconst.DAQmxErrorTimingSrcDoesNotExist =(-200738);
niconst.DAQmxErrorInputBufferSizeNotEqualSampsPerChanForFiniteSampMode = (-200737);
niconst.DAQmxErrorFREQOUTCannotProduceDesiredFrequency2 =(-200736);
niconst.DAQmxErrorExtRefClkRateNotSpecified =(-200735);
niconst.DAQmxErrorDeviceDoesNotSupportDMADataXferForNonBufferedAcq = (-200734);
niconst.DAQmxErrorDigFilterMinPulseWidthSetWhenTristateIsFalse = (-200733);
niconst.DAQmxErrorDigFilterEnableSetWhenTristateIsFalse =(-200732);
niconst.DAQmxErrorNoHWTimingWithOnDemand = (-200731);
niconst.DAQmxErrorCannotDetectChangesWhenTristateIsFalse = (-200730);
niconst.DAQmxErrorCannotHandshakeWhenTristateIsFalse = (-200729);
niconst.DAQmxErrorLinesUsedForStaticInputNotForHandshakingControl =(-200728);
niconst.DAQmxErrorLinesUsedForHandshakingControlNotForStaticInput =(-200727);
niconst.DAQmxErrorLinesUsedForStaticInputNotForHandshakingInput =(-200726);
niconst.DAQmxErrorLinesUsedForHandshakingInputNotForStaticInput =(-200725);
niconst.DAQmxErrorDifferentDITristateValsForChansInTask =(-200724);
niconst.DAQmxErrorTimebaseCalFreqVarianceTooLarge =(-200723);
niconst.DAQmxErrorTimebaseCalFailedToConverge =(-200722);
niconst.DAQmxErrorInadequateResolutionForTimebaseCal = (-200721);
niconst.DAQmxErrorInvalidAOGainCalConst =(-200720);
niconst.DAQmxErrorInvalidAOOffsetCalConst =(-200719);
niconst.DAQmxErrorInvalidAIGainCalConst =(-200718);
niconst.DAQmxErrorInvalidAIOffsetCalConst =(-200717);
niconst.DAQmxErrorDigOutputOverrun = (-200716);
niconst.DAQmxErrorDigInputOverrun =(-200715);
niconst.DAQmxErrorAcqStoppedDriverCantXferDataFastEnough = (-200714);
niconst.DAQmxErrorChansCantAppearInSameTask =(-200713);
niconst.DAQmxErrorInputCfgFailedBecauseWatchdogExpired = (-200712);
niconst.DAQmxErrorAnalogTrigChanNotExternal =(-200711);
niconst.DAQmxErrorTooManyChansForInternalAIInputSrc =(-200710);
niconst.DAQmxErrorTEDSSensorNotDetected =(-200709);
niconst.DAQmxErrorPrptyGetSpecdActiveItemFailedDueToDifftValues =(-200708);
niconst.DAQmxErrorRoutingDestTermPXIClk10InNotInSlot2 =(-200706);
niconst.DAQmxErrorRoutingDestTermPXIStarXNotInSlot2 =(-200705);
niconst.DAQmxErrorRoutingSrcTermPXIStarXNotInSlot2 = (-200704);
niconst.DAQmxErrorRoutingSrcTermPXIStarInSlot16AndAbove =(-200703);
niconst.DAQmxErrorRoutingDestTermPXIStarInSlot16AndAbove = (-200702);
niconst.DAQmxErrorRoutingDestTermPXIStarInSlot2 =(-200701);
niconst.DAQmxErrorRoutingSrcTermPXIStarInSlot2 = (-200700);
niconst.DAQmxErrorRoutingDestTermPXIChassisNotIdentified = (-200699);
niconst.DAQmxErrorRoutingSrcTermPXIChassisNotIdentified =(-200698);
niconst.DAQmxErrorFailedToAcquireCalData = (-200697);
niconst.DAQmxErrorBridgeOffsetNullingCalNotSupported = (-200696);
niconst.DAQmxErrorAIMaxNotSpecified =(-200695);
niconst.DAQmxErrorAIMinNotSpecified =(-200694);
niconst.DAQmxErrorOddTotalBufferSizeToWrite =(-200693);
niconst.DAQmxErrorOddTotalNumSampsToWrite =(-200692);
niconst.DAQmxErrorBufferWithWaitMode = (-200691);
niconst.DAQmxErrorBufferWithHWTimedSinglePointSampMode = (-200690);
niconst.DAQmxErrorCOWritePulseLowTicksNotSupported = (-200689);
niconst.DAQmxErrorCOWritePulseHighTicksNotSupported =(-200688);
niconst.DAQmxErrorCOWritePulseLowTimeOutOfRange =(-200687);
niconst.DAQmxErrorCOWritePulseHighTimeOutOfRange = (-200686);
niconst.DAQmxErrorCOWriteFreqOutOfRange =(-200685);
niconst.DAQmxErrorCOWriteDutyCycleOutOfRange = (-200684);
niconst.DAQmxErrorInvalidInstallation =(-200683);
niconst.DAQmxErrorRefTrigMasterSessionUnavailable =(-200682);
niconst.DAQmxErrorRouteFailedBecauseWatchdogExpired =(-200681);
niconst.DAQmxErrorDeviceShutDownDueToHighTemp =(-200680);
niconst.DAQmxErrorNoMemMapWhenHWTimedSinglePoint = (-200679);
niconst.DAQmxErrorWriteFailedBecauseWatchdogExpired =(-200678);
niconst.DAQmxErrorDifftInternalAIInputSrcs = (-200677);
niconst.DAQmxErrorDifftAIInputSrcInOneChanGroup =(-200676);
niconst.DAQmxErrorInternalAIInputSrcInMultChanGroups = (-200675);
niconst.DAQmxErrorSwitchOpFailedDueToPrevError = (-200674);
niconst.DAQmxErrorWroteMultiSampsUsingSingleSampWrite =(-200673);
niconst.DAQmxErrorMismatchedInputArraySizes =(-200672);
niconst.DAQmxErrorCantExceedRelayDriveLimit =(-200671);
niconst.DAQmxErrorDACRngLowNotEqualToMinusRefVal = (-200670);
niconst.DAQmxErrorCantAllowConnectDACToGnd = (-200669);
niconst.DAQmxErrorWatchdogTimeoutOutOfRangeAndNotSpecialVal =(-200668);
niconst.DAQmxErrorNoWatchdogOutputOnPortReservedForInput = (-200667);
niconst.DAQmxErrorNoInputOnPortCfgdForWatchdogOutput = (-200666);
niconst.DAQmxErrorWatchdogExpirationStateNotEqualForLinesInPort =(-200665);
niconst.DAQmxErrorCannotPerformOpWhenTaskNotReserved = (-200664);
niconst.DAQmxErrorPowerupStateNotSupported = (-200663);
niconst.DAQmxErrorWatchdogTimerNotSupported =(-200662);
niconst.DAQmxErrorOpNotSupportedWhenRefClkSrcNone =(-200661);
niconst.DAQmxErrorSampClkRateUnavailable = (-200660);
niconst.DAQmxErrorPrptyGetSpecdSingleActiveChanFailedDueToDifftVals =(-200659);
niconst.DAQmxErrorPrptyGetImpliedActiveChanFailedDueToDifftVals =(-200658);
niconst.DAQmxErrorPrptyGetSpecdActiveChanFailedDueToDifftVals =(-200657);
niconst.DAQmxErrorNoRegenWhenUsingBrdMem = (-200656);
niconst.DAQmxErrorNonbufferedReadMoreThanSampsPerChan =(-200655);
niconst.DAQmxErrorWatchdogExpirationTristateNotSpecdForEntirePort =(-200654);
niconst.DAQmxErrorPowerupTristateNotSpecdForEntirePort = (-200653);
niconst.DAQmxErrorPowerupStateNotSpecdForEntirePort =(-200652);
niconst.DAQmxErrorCantSetWatchdogExpirationOnDigInChan = (-200651);
niconst.DAQmxErrorCantSetPowerupStateOnDigInChan = (-200650);
niconst.DAQmxErrorPhysChanNotInTask =(-200649);
niconst.DAQmxErrorPhysChanDevNotInTask = (-200648);
niconst.DAQmxErrorDigInputNotSupported = (-200647);
niconst.DAQmxErrorDigFilterIntervalNotEqualForLines =(-200646);
niconst.DAQmxErrorDigFilterIntervalAlreadyCfgd = (-200645);
niconst.DAQmxErrorCantResetExpiredWatchdog = (-200644);
niconst.DAQmxErrorActiveChanTooManyLinesSpecdWhenGettingPrpty =(-200643);
niconst.DAQmxErrorActiveChanNotSpecdWhenGetting1LinePrpty =(-200642);
niconst.DAQmxErrorDigPrptyCannotBeSetPerLine = (-200641);
niconst.DAQmxErrorSendAdvCmpltAfterWaitForTrigInScanlist = (-200640);
niconst.DAQmxErrorDisconnectionRequiredInScanlist =(-200639);
niconst.DAQmxErrorTwoWaitForTrigsAfterConnectionInScanlist = (-200638);
niconst.DAQmxErrorActionSeparatorRequiredAfterBreakingConnectionInScanlist = (-200637);
niconst.DAQmxErrorConnectionInScanlistMustWaitForTrig =(-200636);
niconst.DAQmxErrorActionNotSupportedTaskNotWatchdog =(-200635);
niconst.DAQmxErrorWfmNameSameAsScriptName =(-200634);
niconst.DAQmxErrorScriptNameSameAsWfmName =(-200633);
niconst.DAQmxErrorDSFStopClock = (-200632);
niconst.DAQmxErrorDSFReadyForStartClock =(-200631);
niconst.DAQmxErrorWriteOffsetNotMultOfIncr = (-200630);
niconst.DAQmxErrorDifferentPrptyValsNotSupportedOnDev =(-200629);
niconst.DAQmxErrorRefAndPauseTrigConfigured =(-200628);
niconst.DAQmxErrorFailedToEnableHighSpeedInputClock =(-200627);
niconst.DAQmxErrorEmptyPhysChanInPowerUpStatesArray =(-200626);
niconst.DAQmxErrorActivePhysChanTooManyLinesSpecdWhenGettingPrpty =(-200625);
niconst.DAQmxErrorActivePhysChanNotSpecdWhenGetting1LinePrpty =(-200624);
niconst.DAQmxErrorPXIDevTempCausedShutDown = (-200623);
niconst.DAQmxErrorInvalidNumSampsToWrite = (-200622);
niconst.DAQmxErrorOutputFIFOUnderflow2 = (-200621);
niconst.DAQmxErrorRepeatedAIPhysicalChan = (-200620);
niconst.DAQmxErrorMultScanOpsInOneChassis =(-200619);
niconst.DAQmxErrorInvalidAIChanOrder = (-200618);
niconst.DAQmxErrorReversePowerProtectionActivated =(-200617);
niconst.DAQmxErrorInvalidAsynOpHandle =(-200616);
niconst.DAQmxErrorFailedToEnableHighSpeedOutput =(-200615);
niconst.DAQmxErrorCannotReadPastEndOfRecord =(-200614);
niconst.DAQmxErrorAcqStoppedToPreventInputBufferOverwriteOneDataXferMech = (-200613);
niconst.DAQmxErrorZeroBasedChanIndexInvalid =(-200612);
niconst.DAQmxErrorNoChansOfGivenTypeInTask = (-200611);
niconst.DAQmxErrorSampClkSrcInvalidForOutputValidForInput =(-200610);
niconst.DAQmxErrorOutputBufSizeTooSmallToStartGen =(-200609);
niconst.DAQmxErrorInputBufSizeTooSmallToStartAcq = (-200608);
niconst.DAQmxErrorExportTwoSignalsOnSameTerminal = (-200607);
niconst.DAQmxErrorChanIndexInvalid = (-200606);
niconst.DAQmxErrorRangeSyntaxNumberTooBig =(-200605);
niconst.DAQmxErrorNULLPtr =(-200604);
niconst.DAQmxErrorScaledMinEqualMax =(-200603);
niconst.DAQmxErrorPreScaledMinEqualMax = (-200602);
niconst.DAQmxErrorPropertyNotSupportedForScaleType = (-200601);
niconst.DAQmxErrorChannelNameGenerationNumberTooBig =(-200600);
niconst.DAQmxErrorRepeatedNumberInScaledValues = (-200599);
niconst.DAQmxErrorRepeatedNumberInPreScaledValues =(-200598);
niconst.DAQmxErrorLinesAlreadyReservedForOutput =(-200597);
niconst.DAQmxErrorSwitchOperationChansSpanMultipleDevsInList = (-200596);
niconst.DAQmxErrorInvalidIDInListAtBeginningOfSwitchOperation =(-200595);
niconst.DAQmxErrorMStudioInvalidPolyDirection =(-200594);
niconst.DAQmxErrorMStudioPropertyGetWhileTaskNotVerified = (-200593);
niconst.DAQmxErrorRangeWithTooManyObjects =(-200592);
niconst.DAQmxErrorCppDotNetAPINegativeBufferSize = (-200591);
niconst.DAQmxErrorCppCantRemoveInvalidEventHandler = (-200590);
niconst.DAQmxErrorCppCantRemoveEventHandlerTwice = (-200589);
niconst.DAQmxErrorCppCantRemoveOtherObjectsEventHandler =(-200588);
niconst.DAQmxErrorDigLinesReservedOrUnavailable =(-200587);
niconst.DAQmxErrorDSFFailedToResetStream = (-200586);
niconst.DAQmxErrorDSFReadyForOutputNotAsserted = (-200585);
niconst.DAQmxErrorSampToWritePerChanNotMultipleOfIncr =(-200584);
niconst.DAQmxErrorAOPropertiesCauseVoltageBelowMin = (-200583);
niconst.DAQmxErrorAOPropertiesCauseVoltageOverMax =(-200582);
niconst.DAQmxErrorPropertyNotSupportedWhenRefClkSrcNone =(-200581);
niconst.DAQmxErrorAIMaxTooSmall =(-200580);
niconst.DAQmxErrorAIMaxTooLarge =(-200579);
niconst.DAQmxErrorAIMinTooSmall =(-200578);
niconst.DAQmxErrorAIMinTooLarge =(-200577);
niconst.DAQmxErrorBuiltInCJCSrcNotSupported =(-200576);
niconst.DAQmxErrorTooManyPostTrigSampsPerChan =(-200575);
niconst.DAQmxErrorTrigLineNotFoundSingleDevRoute = (-200574);
niconst.DAQmxErrorDifferentInternalAIInputSources =(-200573);
niconst.DAQmxErrorDifferentAIInputSrcInOneChanGroup =(-200572);
niconst.DAQmxErrorInternalAIInputSrcInMultipleChanGroups = (-200571);
niconst.DAQmxErrorCAPIChanIndexInvalid = (-200570);
niconst.DAQmxErrorCollectionDoesNotMatchChanType = (-200569);
niconst.DAQmxErrorOutputCantStartChangedRegenerationMode = (-200568);
niconst.DAQmxErrorOutputCantStartChangedBufferSize = (-200567);
niconst.DAQmxErrorChanSizeTooBigForU32PortWrite =(-200566);
niconst.DAQmxErrorChanSizeTooBigForU8PortWrite = (-200565);
niconst.DAQmxErrorChanSizeTooBigForU32PortRead = (-200564);
niconst.DAQmxErrorChanSizeTooBigForU8PortRead =(-200563);
niconst.DAQmxErrorInvalidDigDataWrite =(-200562);
niconst.DAQmxErrorInvalidAODataWrite = (-200561);
niconst.DAQmxErrorWaitUntilDoneDoesNotIndicateDone = (-200560);
niconst.DAQmxErrorMultiChanTypesInTask = (-200559);
niconst.DAQmxErrorMultiDevsInTask =(-200558);
niconst.DAQmxErrorCannotSetPropertyWhenTaskRunning = (-200557);
niconst.DAQmxErrorCannotGetPropertyWhenTaskNotCommittedOrRunning = (-200556);
niconst.DAQmxErrorLeadingUnderscoreInString =(-200555);
niconst.DAQmxErrorTrailingSpaceInString =(-200554);
niconst.DAQmxErrorLeadingSpaceInString = (-200553);
niconst.DAQmxErrorInvalidCharInString =(-200552);
niconst.DAQmxErrorDLLBecameUnlocked =(-200551);
niconst.DAQmxErrorDLLLock =(-200550);
niconst.DAQmxErrorSelfCalConstsInvalid = (-200549);
niconst.DAQmxErrorInvalidTrigCouplingExceptForExtTrigChan =(-200548);
niconst.DAQmxErrorWriteFailsBufferSizeAutoConfigured = (-200547);
niconst.DAQmxErrorExtCalAdjustExtRefVoltageFailed =(-200546);
niconst.DAQmxErrorSelfCalFailedExtNoiseOrRefVoltageOutOfCal =(-200545);
niconst.DAQmxErrorExtCalTemperatureNotDAQmx =(-200544);
niconst.DAQmxErrorExtCalDateTimeNotDAQmx = (-200543);
niconst.DAQmxErrorSelfCalTemperatureNotDAQmx = (-200542);
niconst.DAQmxErrorSelfCalDateTimeNotDAQmx =(-200541);
niconst.DAQmxErrorDACRefValNotSet =(-200540);
niconst.DAQmxErrorAnalogMultiSampWriteNotSupported = (-200539);
niconst.DAQmxErrorInvalidActionInControlTask = (-200538);
niconst.DAQmxErrorPolyCoeffsInconsistent = (-200537);
niconst.DAQmxErrorSensorValTooLow =(-200536);
niconst.DAQmxErrorSensorValTooHigh = (-200535);
niconst.DAQmxErrorWaveformNameTooLong =(-200534);
niconst.DAQmxErrorIdentifierTooLongInScript =(-200533);
niconst.DAQmxErrorUnexpectedIDFollowingSwitchChanName =(-200532);
niconst.DAQmxErrorRelayNameNotSpecifiedInList =(-200531);
niconst.DAQmxErrorUnexpectedIDFollowingRelayNameInList = (-200530);
niconst.DAQmxErrorUnexpectedIDFollowingSwitchOpInList =(-200529);
niconst.DAQmxErrorInvalidLineGrouping =(-200528);
niconst.DAQmxErrorCtrMinMax =(-200527);
niconst.DAQmxErrorWriteChanTypeMismatch =(-200526);
niconst.DAQmxErrorReadChanTypeMismatch = (-200525);
niconst.DAQmxErrorWriteNumChansMismatch =(-200524);
niconst.DAQmxErrorOneChanReadForMultiChanTask =(-200523);
niconst.DAQmxErrorCannotSelfCalDuringExtCal =(-200522);
niconst.DAQmxErrorMeasCalAdjustOscillatorPhaseDAC =(-200521);
niconst.DAQmxErrorInvalidCalConstCalADCAdjustment =(-200520);
niconst.DAQmxErrorInvalidCalConstOscillatorFreqDACValue =(-200519);
niconst.DAQmxErrorInvalidCalConstOscillatorPhaseDACValue = (-200518);
niconst.DAQmxErrorInvalidCalConstOffsetDACValue =(-200517);
niconst.DAQmxErrorInvalidCalConstGainDACValue =(-200516);
niconst.DAQmxErrorInvalidNumCalADCReadsToAverage = (-200515);
niconst.DAQmxErrorInvalidCfgCalAdjustDirectPathOutputImpedance = (-200514);
niconst.DAQmxErrorInvalidCfgCalAdjustMainPathOutputImpedance = (-200513);
niconst.DAQmxErrorInvalidCfgCalAdjustMainPathPostAmpGainAndOffset =(-200512);
niconst.DAQmxErrorInvalidCfgCalAdjustMainPathPreAmpGain =(-200511);
niconst.DAQmxErrorInvalidCfgCalAdjustMainPreAmpOffset =(-200510);
niconst.DAQmxErrorMeasCalAdjustCalADC =(-200509);
niconst.DAQmxErrorMeasCalAdjustOscillatorFrequency = (-200508);
niconst.DAQmxErrorMeasCalAdjustDirectPathOutputImpedance = (-200507);
niconst.DAQmxErrorMeasCalAdjustMainPathOutputImpedance = (-200506);
niconst.DAQmxErrorMeasCalAdjustDirectPathGain =(-200505);
niconst.DAQmxErrorMeasCalAdjustMainPathPostAmpGainAndOffset =(-200504);
niconst.DAQmxErrorMeasCalAdjustMainPathPreAmpGain =(-200503);
niconst.DAQmxErrorMeasCalAdjustMainPathPreAmpOffset =(-200502);
niconst.DAQmxErrorInvalidDateTimeInEEPROM =(-200501);
niconst.DAQmxErrorUnableToLocateErrorResources = (-200500);
niconst.DAQmxErrorDotNetAPINotUnsigned32BitNumber =(-200499);
niconst.DAQmxErrorInvalidRangeOfObjectsSyntaxInString =(-200498);
niconst.DAQmxErrorAttemptToEnableLineNotPreviouslyDisabled = (-200497);
niconst.DAQmxErrorInvalidCharInPattern = (-200496);
niconst.DAQmxErrorIntermediateBufferFull = (-200495);
niconst.DAQmxErrorLoadTaskFailsBecauseNoTimingOnDev =(-200494);
niconst.DAQmxErrorCAPIReservedParamNotNULLNorEmpty = (-200493);
niconst.DAQmxErrorCAPIReservedParamNotNULL = (-200492);
niconst.DAQmxErrorCAPIReservedParamNotZero = (-200491);
niconst.DAQmxErrorSampleValueOutOfRange =(-200490);
niconst.DAQmxErrorChanAlreadyInTask =(-200489);
niconst.DAQmxErrorVirtualChanDoesNotExist =(-200488);
niconst.DAQmxErrorChanNotInTask =(-200486);
niconst.DAQmxErrorTaskNotInDataNeighborhood =(-200485);
niconst.DAQmxErrorCantSaveTaskWithoutReplace = (-200484);
niconst.DAQmxErrorCantSaveChanWithoutReplace = (-200483);
niconst.DAQmxErrorDevNotInTask = (-200482);
niconst.DAQmxErrorDevAlreadyInTask = (-200481);
niconst.DAQmxErrorCanNotPerformOpWhileTaskRunning =(-200479);
niconst.DAQmxErrorCanNotPerformOpWhenNoChansInTask = (-200478);
niconst.DAQmxErrorCanNotPerformOpWhenNoDevInTask = (-200477);
niconst.DAQmxErrorCannotPerformOpWhenTaskNotRunning =(-200475);
niconst.DAQmxErrorOperationTimedOut =(-200474);
niconst.DAQmxErrorCannotReadWhenAutoStartFalseAndTaskNotRunningOrCommitted = (-200473);
niconst.DAQmxErrorCannotWriteWhenAutoStartFalseAndTaskNotRunningOrCommitted =(-200472);
niconst.DAQmxErrorTaskVersionNew = (-200470);
niconst.DAQmxErrorChanVersionNew = (-200469);
niconst.DAQmxErrorEmptyString =(-200467);
niconst.DAQmxErrorChannelSizeTooBigForPortReadType = (-200466);
niconst.DAQmxErrorChannelSizeTooBigForPortWriteType =(-200465);
niconst.DAQmxErrorExpectedNumberOfChannelsVerificationFailed = (-200464);
niconst.DAQmxErrorNumLinesMismatchInReadOrWrite =(-200463);
niconst.DAQmxErrorOutputBufferEmpty =(-200462);
niconst.DAQmxErrorInvalidChanName =(-200461);
niconst.DAQmxErrorReadNoInputChansInTask = (-200460);
niconst.DAQmxErrorWriteNoOutputChansInTask = (-200459);
niconst.DAQmxErrorPropertyNotSupportedNotInputTask = (-200457);
niconst.DAQmxErrorPropertyNotSupportedNotOutputTask =(-200456);
niconst.DAQmxErrorGetPropertyNotInputBufferedTask =(-200455);
niconst.DAQmxErrorGetPropertyNotOutputBufferedTask = (-200454);
niconst.DAQmxErrorInvalidTimeoutVal =(-200453);
niconst.DAQmxErrorAttributeNotSupportedInTaskContext = (-200452);
niconst.DAQmxErrorAttributeNotQueryableUnlessTaskIsCommitted = (-200451);
niconst.DAQmxErrorAttributeNotSettableWhenTaskIsRunning =(-200450);
niconst.DAQmxErrorDACRngLowNotMinusRefValNorZero = (-200449);
niconst.DAQmxErrorDACRngHighNotEqualRefVal = (-200448);
niconst.DAQmxErrorUnitsNotFromCustomScale =(-200447);
niconst.DAQmxErrorInvalidVoltageReadingDuringExtCal =(-200446);
niconst.DAQmxErrorCalFunctionNotSupported =(-200445);
niconst.DAQmxErrorInvalidPhysicalChanForCal =(-200444);
niconst.DAQmxErrorExtCalNotComplete =(-200443);
niconst.DAQmxErrorCantSyncToExtStimulusFreqDuringCal = (-200442);
niconst.DAQmxErrorUnableToDetectExtStimulusFreqDuringCal = (-200441);
niconst.DAQmxErrorInvalidCloseAction = (-200440);
niconst.DAQmxErrorExtCalFunctionOutsideExtCalSession = (-200439);
niconst.DAQmxErrorInvalidCalArea = (-200438);
niconst.DAQmxErrorExtCalConstsInvalid =(-200437);
niconst.DAQmxErrorStartTrigDelayWithExtSampClk = (-200436);
niconst.DAQmxErrorDelayFromSampClkWithExtConv =(-200435);
niconst.DAQmxErrorFewerThan2PreScaledVals =(-200434);
niconst.DAQmxErrorFewerThan2ScaledValues = (-200433);
niconst.DAQmxErrorPhysChanOutputType = (-200432);
niconst.DAQmxErrorPhysChanMeasType = (-200431);
niconst.DAQmxErrorInvalidPhysChanType =(-200430);
niconst.DAQmxErrorLabVIEWEmptyTaskOrChans =(-200429);
niconst.DAQmxErrorLabVIEWInvalidTaskOrChans =(-200428);
niconst.DAQmxErrorInvalidRefClkRate =(-200427);
niconst.DAQmxErrorInvalidExtTrigImpedance =(-200426);
niconst.DAQmxErrorHystTrigLevelAIMax = (-200425);
niconst.DAQmxErrorLineNumIncompatibleWithVideoSignalFormat = (-200424);
niconst.DAQmxErrorTrigWindowAIMinAIMaxCombo =(-200423);
niconst.DAQmxErrorTrigAIMinAIMax = (-200422);
niconst.DAQmxErrorHystTrigLevelAIMin = (-200421);
niconst.DAQmxErrorInvalidSampRateConsiderRIS = (-200420);
niconst.DAQmxErrorInvalidReadPosDuringRIS =(-200419);
niconst.DAQmxErrorImmedTrigDuringRISMode = (-200418);
niconst.DAQmxErrorTDCNotEnabledDuringRISMode = (-200417);
niconst.DAQmxErrorMultiRecWithRIS =(-200416);
niconst.DAQmxErrorInvalidRefClkSrc = (-200415);
niconst.DAQmxErrorInvalidSampClkSrc =(-200414);
niconst.DAQmxErrorInsufficientOnBoardMemForNumRecsAndSamps = (-200413);
niconst.DAQmxErrorInvalidAIAttenuation = (-200412);
niconst.DAQmxErrorACCouplingNotAllowedWith50OhmImpedance = (-200411);
niconst.DAQmxErrorInvalidRecordNum = (-200410);
niconst.DAQmxErrorZeroSlopeLinearScale = (-200409);
niconst.DAQmxErrorZeroReversePolyScaleCoeffs = (-200408);
niconst.DAQmxErrorZeroForwardPolyScaleCoeffs = (-200407);
niconst.DAQmxErrorNoReversePolyScaleCoeffs = (-200406);
niconst.DAQmxErrorNoForwardPolyScaleCoeffs = (-200405);
niconst.DAQmxErrorNoPolyScaleCoeffs =(-200404);
niconst.DAQmxErrorReversePolyOrderLessThanNumPtsToCompute =(-200403);
niconst.DAQmxErrorReversePolyOrderNotPositive =(-200402);
niconst.DAQmxErrorNumPtsToComputeNotPositive = (-200401);
niconst.DAQmxErrorWaveformLengthNotMultipleOfIncr =(-200400);
niconst.DAQmxErrorCAPINoExtendedErrorInfoAvailable = (-200399);
niconst.DAQmxErrorCVIFunctionNotFoundInDAQmxDLL =(-200398);
niconst.DAQmxErrorCVIFailedToLoadDAQmxDLL =(-200397);
niconst.DAQmxErrorNoCommonTrigLineForImmedRoute =(-200396);
niconst.DAQmxErrorNoCommonTrigLineForTaskRoute = (-200395);
niconst.DAQmxErrorF64PrptyValNotUnsignedInt =(-200394);
niconst.DAQmxErrorRegisterNotWritable =(-200393);
niconst.DAQmxErrorInvalidOutputVoltageAtSampClkRate =(-200392);
niconst.DAQmxErrorStrobePhaseShiftDCMBecameUnlocked =(-200391);
niconst.DAQmxErrorDrivePhaseShiftDCMBecameUnlocked = (-200390);
niconst.DAQmxErrorClkOutPhaseShiftDCMBecameUnlocked =(-200389);
niconst.DAQmxErrorOutputBoardClkDCMBecameUnlocked =(-200388);
niconst.DAQmxErrorInputBoardClkDCMBecameUnlocked = (-200387);
niconst.DAQmxErrorInternalClkDCMBecameUnlocked = (-200386);
niconst.DAQmxErrorDCMLock =(-200385);
niconst.DAQmxErrorDataLineReservedForDynamicOutput = (-200384);
niconst.DAQmxErrorInvalidRefClkSrcGivenSampClkSrc =(-200383);
niconst.DAQmxErrorNoPatternMatcherAvailable =(-200382);
niconst.DAQmxErrorInvalidDelaySampRateBelowPhaseShiftDCMThresh = (-200381);
niconst.DAQmxErrorStrainGageCalibration =(-200380);
niconst.DAQmxErrorInvalidExtClockFreqAndDivCombo = (-200379);
niconst.DAQmxErrorCustomScaleDoesNotExist =(-200378);
niconst.DAQmxErrorOnlyFrontEndChanOpsDuringScan =(-200377);
niconst.DAQmxErrorInvalidOptionForDigitalPortChannel = (-200376);
niconst.DAQmxErrorUnsupportedSignalTypeExportSignal =(-200375);
niconst.DAQmxErrorInvalidSignalTypeExportSignal =(-200374);
niconst.DAQmxErrorUnsupportedTrigTypeSendsSWTrig = (-200373);
niconst.DAQmxErrorInvalidTrigTypeSendsSWTrig = (-200372);
niconst.DAQmxErrorRepeatedPhysicalChan = (-200371);
niconst.DAQmxErrorResourcesInUseForRouteInTask = (-200370);
niconst.DAQmxErrorResourcesInUseForRoute = (-200369);
niconst.DAQmxErrorRouteNotSupportedByHW =(-200368);
niconst.DAQmxErrorResourcesInUseForExportSignalPolarity =(-200367);
niconst.DAQmxErrorResourcesInUseForInversionInTask = (-200366);
niconst.DAQmxErrorResourcesInUseForInversion = (-200365);
niconst.DAQmxErrorExportSignalPolarityNotSupportedByHW = (-200364);
niconst.DAQmxErrorInversionNotSupportedByHW =(-200363);
niconst.DAQmxErrorOverloadedChansExistNotRead =(-200362);
niconst.DAQmxErrorInputFIFOOverflow2 = (-200361);
niconst.DAQmxErrorCJCChanNotSpecd =(-200360);
niconst.DAQmxErrorCtrExportSignalNotPossible = (-200359);
niconst.DAQmxErrorRefTrigWhenContinuous =(-200358);
niconst.DAQmxErrorIncompatibleSensorOutputAndDeviceInputRanges = (-200357);
niconst.DAQmxErrorCustomScaleNameUsed =(-200356);
niconst.DAQmxErrorPropertyValNotSupportedByHW =(-200355);
niconst.DAQmxErrorPropertyValNotValidTermName =(-200354);
niconst.DAQmxErrorResourcesInUseForProperty =(-200353);
niconst.DAQmxErrorCJCChanAlreadyUsed = (-200352);
niconst.DAQmxErrorForwardPolynomialCoefNotSpecd =(-200351);
niconst.DAQmxErrorTableScaleNumPreScaledAndScaledValsNotEqual =(-200350);
niconst.DAQmxErrorTableScalePreScaledValsNotSpecd =(-200349);
niconst.DAQmxErrorTableScaleScaledValsNotSpecd = (-200348);
niconst.DAQmxErrorIntermediateBufferSizeNotMultipleOfIncr =(-200347);
niconst.DAQmxErrorEventPulseWidthOutOfRange =(-200346);
niconst.DAQmxErrorEventDelayOutOfRange = (-200345);
niconst.DAQmxErrorSampPerChanNotMultipleOfIncr = (-200344);
niconst.DAQmxErrorCannotCalculateNumSampsTaskNotStarted =(-200343);
niconst.DAQmxErrorScriptNotInMem = (-200342);
niconst.DAQmxErrorOnboardMemTooSmall = (-200341);
niconst.DAQmxErrorReadAllAvailableDataWithoutBuffer =(-200340);
niconst.DAQmxErrorPulseActiveAtStart = (-200339);
niconst.DAQmxErrorCalTempNotSupported =(-200338);
niconst.DAQmxErrorDelayFromSampClkTooLong =(-200337);
niconst.DAQmxErrorDelayFromSampClkTooShort = (-200336);
niconst.DAQmxErrorAIConvRateTooHigh =(-200335);
niconst.DAQmxErrorDelayFromStartTrigTooLong =(-200334);
niconst.DAQmxErrorDelayFromStartTrigTooShort = (-200333);
niconst.DAQmxErrorSampRateTooHigh =(-200332);
niconst.DAQmxErrorSampRateTooLow = (-200331);
niconst.DAQmxErrorPFI0UsedForAnalogAndDigitalSrc = (-200330);
niconst.DAQmxErrorPrimingCfgFIFO = (-200329);
niconst.DAQmxErrorCannotOpenTopologyCfgFile =(-200328);
niconst.DAQmxErrorInvalidDTInsideWfmDataType = (-200327);
niconst.DAQmxErrorRouteSrcAndDestSame =(-200326);
niconst.DAQmxErrorReversePolynomialCoefNotSpecd =(-200325);
niconst.DAQmxErrorDevAbsentOrUnavailable = (-200324);
niconst.DAQmxErrorNoAdvTrigForMultiDevScan = (-200323);
niconst.DAQmxErrorInterruptsInsufficientDataXferMech = (-200322);
niconst.DAQmxErrorInvalidAttentuationBasedOnMinMax = (-200321);
niconst.DAQmxErrorCabledModuleCannotRouteSSH = (-200320);
niconst.DAQmxErrorCabledModuleCannotRouteConvClk = (-200319);
niconst.DAQmxErrorInvalidExcitValForScaling =(-200318);
niconst.DAQmxErrorNoDevMemForScript =(-200317);
niconst.DAQmxErrorScriptDataUnderflow =(-200316);
niconst.DAQmxErrorNoDevMemForWaveform =(-200315);
niconst.DAQmxErrorStreamDCMBecameUnlocked =(-200314);
niconst.DAQmxErrorStreamDCMLock =(-200313);
niconst.DAQmxErrorWaveformNotInMem = (-200312);
niconst.DAQmxErrorWaveformWriteOutOfBounds = (-200311);
niconst.DAQmxErrorWaveformPreviouslyAllocated =(-200310);
niconst.DAQmxErrorSampClkTbMasterTbDivNotAppropriateForSampTbSrc = (-200309);
niconst.DAQmxErrorSampTbRateSampTbSrcMismatch =(-200308);
niconst.DAQmxErrorMasterTbRateMasterTbSrcMismatch =(-200307);
niconst.DAQmxErrorSampsPerChanTooBig = (-200306);
niconst.DAQmxErrorFinitePulseTrainNotPossible =(-200305);
niconst.DAQmxErrorExtMasterTimebaseRateNotSpecified =(-200304);
niconst.DAQmxErrorExtSampClkSrcNotSpecified =(-200303);
niconst.DAQmxErrorInputSignalSlowerThanMeasTime =(-200302);
niconst.DAQmxErrorCannotUpdatePulseGenProperty = (-200301);
niconst.DAQmxErrorInvalidTimingType =(-200300);
niconst.DAQmxErrorPropertyUnavailWhenUsingOnboardMemory =(-200297);
niconst.DAQmxErrorCannotWriteAfterStartWithOnboardMemory = (-200295);
niconst.DAQmxErrorNotEnoughSampsWrittenForInitialXferRqstCondition = (-200294);
niconst.DAQmxErrorNoMoreSpace =(-200293);
niconst.DAQmxErrorSamplesCanNotYetBeWritten =(-200292);
niconst.DAQmxErrorGenStoppedToPreventIntermediateBufferRegenOfOldSamples = (-200291);
niconst.DAQmxErrorGenStoppedToPreventRegenOfOldSamples = (-200290);
niconst.DAQmxErrorSamplesNoLongerWriteable = (-200289);
niconst.DAQmxErrorSamplesWillNeverBeGenerated =(-200288);
niconst.DAQmxErrorNegativeWriteSampleNumber =(-200287);
niconst.DAQmxErrorNoAcqStarted = (-200286);
niconst.DAQmxErrorSamplesNotYetAvailable = (-200284);
niconst.DAQmxErrorAcqStoppedToPreventIntermediateBufferOverflow =(-200283);
niconst.DAQmxErrorNoRefTrigConfigured =(-200282);
niconst.DAQmxErrorCannotReadRelativeToRefTrigUntilDone = (-200281);
niconst.DAQmxErrorSamplesNoLongerAvailable = (-200279);
niconst.DAQmxErrorSamplesWillNeverBeAvailable =(-200278);
niconst.DAQmxErrorNegativeReadSampleNumber = (-200277);
niconst.DAQmxErrorExternalSampClkAndRefClkThruSameTerm = (-200276);
niconst.DAQmxErrorExtSampClkRateTooLowForClkIn = (-200275);
niconst.DAQmxErrorExtSampClkRateTooHighForBackplane =(-200274);
niconst.DAQmxErrorSampClkRateAndDivCombo = (-200273);
niconst.DAQmxErrorSampClkRateTooLowForDivDown =(-200272);
niconst.DAQmxErrorProductOfAOMinAndGainTooSmall =(-200271);
niconst.DAQmxErrorInterpolationRateNotPossible = (-200270);
niconst.DAQmxErrorOffsetTooLarge = (-200269);
niconst.DAQmxErrorOffsetTooSmall = (-200268);
niconst.DAQmxErrorProductOfAOMaxAndGainTooLarge =(-200267);
niconst.DAQmxErrorMinAndMaxNotSymmetric =(-200266);
niconst.DAQmxErrorInvalidAnalogTrigSrc = (-200265);
niconst.DAQmxErrorTooManyChansForAnalogRefTrig = (-200264);
niconst.DAQmxErrorTooManyChansForAnalogPauseTrig = (-200263);
niconst.DAQmxErrorTrigWhenOnDemandSampTiming = (-200262);
niconst.DAQmxErrorInconsistentAnalogTrigSettings = (-200261);
niconst.DAQmxErrorMemMapDataXferModeSampTimingCombo =(-200260);
niconst.DAQmxErrorInvalidJumperedAttr =(-200259);
niconst.DAQmxErrorInvalidGainBasedOnMinMax = (-200258);
niconst.DAQmxErrorInconsistentExcit =(-200257);
niconst.DAQmxErrorTopologyNotSupportedByCfgTermBlock = (-200256);
niconst.DAQmxErrorBuiltInTempSensorNotSupported =(-200255);
niconst.DAQmxErrorInvalidTerm =(-200254);
niconst.DAQmxErrorCannotTristateTerm = (-200253);
niconst.DAQmxErrorCannotTristateBusyTerm = (-200252);
niconst.DAQmxErrorNoDMAChansAvailable =(-200251);
niconst.DAQmxErrorInvalidWaveformLengthWithinLoopInScript =(-200250);
niconst.DAQmxErrorInvalidSubsetLengthWithinLoopInScript =(-200249);
niconst.DAQmxErrorMarkerPosInvalidForLoopInScript =(-200248);
niconst.DAQmxErrorIntegerExpectedInScript =(-200247);
niconst.DAQmxErrorPLLBecameUnlocked =(-200246);
niconst.DAQmxErrorPLLLock =(-200245);
niconst.DAQmxErrorDDCClkOutDCMBecameUnlocked = (-200244);
niconst.DAQmxErrorDDCClkOutDCMLock = (-200243);
niconst.DAQmxErrorClkDoublerDCMBecameUnlocked =(-200242);
niconst.DAQmxErrorClkDoublerDCMLock =(-200241);
niconst.DAQmxErrorSampClkDCMBecameUnlocked = (-200240);
niconst.DAQmxErrorSampClkDCMLock = (-200239);
niconst.DAQmxErrorSampClkTimebaseDCMBecameUnlocked = (-200238);
niconst.DAQmxErrorSampClkTimebaseDCMLock = (-200237);
niconst.DAQmxErrorAttrCannotBeReset =(-200236);
niconst.DAQmxErrorExplanationNotFound =(-200235);
niconst.DAQmxErrorWriteBufferTooSmall =(-200234);
niconst.DAQmxErrorSpecifiedAttrNotValid =(-200233);
niconst.DAQmxErrorAttrCannotBeRead = (-200232);
niconst.DAQmxErrorAttrCannotBeSet =(-200231);
niconst.DAQmxErrorNULLPtrForC_Api =(-200230);
niconst.DAQmxErrorReadBufferTooSmall = (-200229);
niconst.DAQmxErrorBufferTooSmallForString =(-200228);
niconst.DAQmxErrorNoAvailTrigLinesOnDevice = (-200227);
niconst.DAQmxErrorTrigBusLineNotAvail =(-200226);
niconst.DAQmxErrorCouldNotReserveRequestedTrigLine = (-200225);
niconst.DAQmxErrorTrigLineNotFound = (-200224);
niconst.DAQmxErrorSCXI1126ThreshHystCombination =(-200223);
niconst.DAQmxErrorAcqStoppedToPreventInputBufferOverwrite =(-200222);
niconst.DAQmxErrorTimeoutExceeded =(-200221);
niconst.DAQmxErrorInvalidDeviceID =(-200220);
niconst.DAQmxErrorInvalidAOChanOrder = (-200219);
niconst.DAQmxErrorSampleTimingTypeAndDataXferMode =(-200218);
niconst.DAQmxErrorBufferWithOnDemandSampTiming = (-200217);
niconst.DAQmxErrorBufferAndDataXferMode =(-200216);
niconst.DAQmxErrorMemMapAndBuffer =(-200215);
niconst.DAQmxErrorNoAnalogTrigHW = (-200214);
niconst.DAQmxErrorTooManyPretrigPlusMinPostTrigSamps = (-200213);
niconst.DAQmxErrorInconsistentUnitsSpecified = (-200212);
niconst.DAQmxErrorMultipleRelaysForSingleRelayOp = (-200211);
niconst.DAQmxErrorMultipleDevIDsPerChassisSpecifiedInList =(-200210);
niconst.DAQmxErrorDuplicateDevIDInList = (-200209);
niconst.DAQmxErrorInvalidRangeStatementCharInList =(-200208);
niconst.DAQmxErrorInvalidDeviceIDInList =(-200207);
niconst.DAQmxErrorTriggerPolarityConflict =(-200206);
niconst.DAQmxErrorCannotScanWithCurrentTopology =(-200205);
niconst.DAQmxErrorUnexpectedIdentifierInFullySpecifiedPathInList = (-200204);
niconst.DAQmxErrorSwitchCannotDriveMultipleTrigLines = (-200203);
niconst.DAQmxErrorInvalidRelayName = (-200202);
niconst.DAQmxErrorSwitchScanlistTooBig = (-200201);
niconst.DAQmxErrorSwitchChanInUse =(-200200);
niconst.DAQmxErrorSwitchNotResetBeforeScan = (-200199);
niconst.DAQmxErrorInvalidTopology =(-200198);
niconst.DAQmxErrorAttrNotSupported = (-200197);
niconst.DAQmxErrorUnexpectedEndOfActionsInList = (-200196);
niconst.DAQmxErrorPowerBudgetExceeded =(-200195);
niconst.DAQmxErrorHWUnexpectedlyPoweredOffAndOn =(-200194);
niconst.DAQmxErrorSwitchOperationNotSupported =(-200193);
niconst.DAQmxErrorOnlyContinuousScanSupported =(-200192);
niconst.DAQmxErrorSwitchDifferentTopologyWhenScanning =(-200191);
niconst.DAQmxErrorDisconnectPathNotSameAsExistingPath =(-200190);
niconst.DAQmxErrorConnectionNotPermittedOnChanReservedForRouting = (-200189);
niconst.DAQmxErrorCannotConnectSrcChans =(-200188);
niconst.DAQmxErrorCannotConnectChannelToItself = (-200187);
niconst.DAQmxErrorChannelNotReservedForRouting = (-200186);
niconst.DAQmxErrorCannotConnectChansDirectly = (-200185);
niconst.DAQmxErrorChansAlreadyConnected =(-200184);
niconst.DAQmxErrorChanDuplicatedInPath = (-200183);
niconst.DAQmxErrorNoPathToDisconnect = (-200182);
niconst.DAQmxErrorInvalidSwitchChan =(-200181);
niconst.DAQmxErrorNoPathAvailableBetween2SwitchChans = (-200180);
niconst.DAQmxErrorExplicitConnectionExists = (-200179);
niconst.DAQmxErrorSwitchDifferentSettlingTimeWhenScanning =(-200178);
niconst.DAQmxErrorOperationOnlyPermittedWhileScanning =(-200177);
niconst.DAQmxErrorOperationNotPermittedWhileScanning = (-200176);
niconst.DAQmxErrorHardwareNotResponding =(-200175);
niconst.DAQmxErrorInvalidSampAndMasterTimebaseRateCombo =(-200173);
niconst.DAQmxErrorNonZeroBufferSizeInProgIOXfer =(-200172);
niconst.DAQmxErrorVirtualChanNameUsed =(-200171);
niconst.DAQmxErrorPhysicalChanDoesNotExist = (-200170);
niconst.DAQmxErrorMemMapOnlyForProgIOXfer =(-200169);
niconst.DAQmxErrorTooManyChans = (-200168);
niconst.DAQmxErrorCannotHaveCJTempWithOtherChans = (-200167);
niconst.DAQmxErrorOutputBufferUnderwrite = (-200166);
niconst.DAQmxErrorSensorInvalidCompletionResistance =(-200163);
niconst.DAQmxErrorVoltageExcitIncompatibleWith2WireCfg = (-200162);
niconst.DAQmxErrorIntExcitSrcNotAvailable =(-200161);
niconst.DAQmxErrorCannotCreateChannelAfterTaskVerified = (-200160);
niconst.DAQmxErrorLinesReservedForSCXIControl =(-200159);
niconst.DAQmxErrorCouldNotReserveLinesForSCXIControl = (-200158);
niconst.DAQmxErrorCalibrationFailed =(-200157);
niconst.DAQmxErrorReferenceFrequencyInvalid =(-200156);
niconst.DAQmxErrorReferenceResistanceInvalid = (-200155);
niconst.DAQmxErrorReferenceCurrentInvalid =(-200154);
niconst.DAQmxErrorReferenceVoltageInvalid =(-200153);
niconst.DAQmxErrorEEPROMDataInvalid =(-200152);
niconst.DAQmxErrorCabledModuleNotCapableOfRoutingAI =(-200151);
niconst.DAQmxErrorChannelNotAvailableInParallelMode =(-200150);
niconst.DAQmxErrorExternalTimebaseRateNotKnownForDelay = (-200149);
niconst.DAQmxErrorFREQOUTCannotProduceDesiredFrequency = (-200148);
niconst.DAQmxErrorMultipleCounterInputTask = (-200147);
niconst.DAQmxErrorCounterStartPauseTriggerConflict = (-200146);
niconst.DAQmxErrorCounterInputPauseTriggerAndSampleClockInvalid =(-200145);
niconst.DAQmxErrorCounterOutputPauseTriggerInvalid = (-200144);
niconst.DAQmxErrorCounterTimebaseRateNotSpecified =(-200143);
niconst.DAQmxErrorCounterTimebaseRateNotFound =(-200142);
niconst.DAQmxErrorCounterOverflow =(-200141);
niconst.DAQmxErrorCounterNoTimebaseEdgesBetweenGates = (-200140);
niconst.DAQmxErrorCounterMaxMinRangeFreq = (-200139);
niconst.DAQmxErrorCounterMaxMinRangeTime = (-200138);
niconst.DAQmxErrorSuitableTimebaseNotFoundTimeCombo =(-200137);
niconst.DAQmxErrorSuitableTimebaseNotFoundFrequencyCombo = (-200136);
niconst.DAQmxErrorInternalTimebaseSourceDivisorCombo = (-200135);
niconst.DAQmxErrorInternalTimebaseSourceRateCombo =(-200134);
niconst.DAQmxErrorInternalTimebaseRateDivisorSourceCombo = (-200133);
niconst.DAQmxErrorExternalTimebaseRateNotknownForRate =(-200132);
niconst.DAQmxErrorAnalogTrigChanNotFirstInScanList = (-200131);
niconst.DAQmxErrorNoDivisorForExternalSignal = (-200130);
niconst.DAQmxErrorAttributeInconsistentAcrossRepeatedPhysicalChannels =(-200128);
niconst.DAQmxErrorCannotHandshakeWithPort0 = (-200127);
niconst.DAQmxErrorControlLineConflictOnPortC = (-200126);
niconst.DAQmxErrorLines4To7ConfiguredForOutput = (-200125);
niconst.DAQmxErrorLines4To7ConfiguredForInput =(-200124);
niconst.DAQmxErrorLines0To3ConfiguredForOutput = (-200123);
niconst.DAQmxErrorLines0To3ConfiguredForInput =(-200122);
niconst.DAQmxErrorPortConfiguredForOutput =(-200121);
niconst.DAQmxErrorPortConfiguredForInput = (-200120);
niconst.DAQmxErrorPortConfiguredForStaticDigitalOps =(-200119);
niconst.DAQmxErrorPortReservedForHandshaking = (-200118);
niconst.DAQmxErrorPortDoesNotSupportHandshakingDataIO =(-200117);
niconst.DAQmxErrorCannotTristate8255OutputLines =(-200116);
niconst.DAQmxErrorTemperatureOutOfRangeForCalibration =(-200113);
niconst.DAQmxErrorCalibrationHandleInvalid = (-200112);
niconst.DAQmxErrorPasswordRequired = (-200111);
niconst.DAQmxErrorIncorrectPassword =(-200110);
niconst.DAQmxErrorPasswordTooLong =(-200109);
niconst.DAQmxErrorCalibrationSessionAlreadyOpen =(-200108);
niconst.DAQmxErrorSCXIModuleIncorrect =(-200107);
niconst.DAQmxErrorAttributeInconsistentAcrossChannelsOnDevice =(-200106);
niconst.DAQmxErrorSCXI1122ResistanceChanNotSupportedForCfg = (-200105);
niconst.DAQmxErrorBracketPairingMismatchInList = (-200104);
niconst.DAQmxErrorInconsistentNumSamplesToWrite =(-200103);
niconst.DAQmxErrorIncorrectDigitalPattern =(-200102);
niconst.DAQmxErrorIncorrectNumChannelsToWrite =(-200101);
niconst.DAQmxErrorIncorrectReadFunction =(-200100);
niconst.DAQmxErrorPhysicalChannelNotSpecified =(-200099);
niconst.DAQmxErrorMoreThanOneTerminal =(-200098);
niconst.DAQmxErrorMoreThanOneActiveChannelSpecified =(-200097);
niconst.DAQmxErrorInvalidNumberSamplesToRead = (-200096);
niconst.DAQmxErrorAnalogWaveformExpected = (-200095);
niconst.DAQmxErrorDigitalWaveformExpected =(-200094);
niconst.DAQmxErrorActiveChannelNotSpecified =(-200093);
niconst.DAQmxErrorFunctionNotSupportedForDeviceTasks = (-200092);
niconst.DAQmxErrorFunctionNotInLibrary = (-200091);
niconst.DAQmxErrorLibraryNotPresent =(-200090);
niconst.DAQmxErrorDuplicateTask =(-200089);
niconst.DAQmxErrorInvalidTask =(-200088);
niconst.DAQmxErrorInvalidChannel = (-200087);
niconst.DAQmxErrorInvalidSyntaxForPhysicalChannelRange = (-200086);
niconst.DAQmxErrorMinNotLessThanMax =(-200082);
niconst.DAQmxErrorSampleRateNumChansConvertPeriodCombo = (-200081);
niconst.DAQmxErrorAODuringCounter1DMAConflict =(-200079);
niconst.DAQmxErrorAIDuringCounter0DMAConflict =(-200078);
niconst.DAQmxErrorInvalidAttributeValue =(-200077);
niconst.DAQmxErrorSuppliedCurrentDataOutsideSpecifiedRange = (-200076);
niconst.DAQmxErrorSuppliedVoltageDataOutsideSpecifiedRange = (-200075);
niconst.DAQmxErrorCannotStoreCalConst =(-200074);
niconst.DAQmxErrorSCXIModuleNotFound = (-200073);
niconst.DAQmxErrorDuplicatePhysicalChansNotSupported = (-200072);
niconst.DAQmxErrorTooManyPhysicalChansInList = (-200071);
niconst.DAQmxErrorInvalidAdvanceEventTriggerType = (-200070);
niconst.DAQmxErrorDeviceIsNotAValidSwitch =(-200069);
niconst.DAQmxErrorDeviceDoesNotSupportScanning = (-200068);
niconst.DAQmxErrorScanListCannotBeTimed =(-200067);
niconst.DAQmxErrorConnectOperatorInvalidAtPointInList =(-200066);
niconst.DAQmxErrorUnexpectedSwitchActionInList = (-200065);
niconst.DAQmxErrorUnexpectedSeparatorInList =(-200064);
niconst.DAQmxErrorExpectedTerminatorInList = (-200063);
niconst.DAQmxErrorExpectedConnectOperatorInList =(-200062);
niconst.DAQmxErrorExpectedSeparatorInList =(-200061);
niconst.DAQmxErrorFullySpecifiedPathInListContainsRange =(-200060);
niconst.DAQmxErrorConnectionSeparatorAtEndOfList = (-200059);
niconst.DAQmxErrorIdentifierInListTooLong =(-200058);
niconst.DAQmxErrorDuplicateDeviceIDInListWhenSettling =(-200057);
niconst.DAQmxErrorChannelNameNotSpecifiedInList =(-200056);
niconst.DAQmxErrorDeviceIDNotSpecifiedInList = (-200055);
niconst.DAQmxErrorSemicolonDoesNotFollowRangeInList =(-200054);
niconst.DAQmxErrorSwitchActionInListSpansMultipleDevices = (-200053);
niconst.DAQmxErrorRangeWithoutAConnectActionInList = (-200052);
niconst.DAQmxErrorInvalidIdentifierFollowingSeparatorInList =(-200051);
niconst.DAQmxErrorInvalidChannelNameInList = (-200050);
niconst.DAQmxErrorInvalidNumberInRepeatStatementInList = (-200049);
niconst.DAQmxErrorInvalidTriggerLineInList = (-200048);
niconst.DAQmxErrorInvalidIdentifierInListFollowingDeviceID = (-200047);
niconst.DAQmxErrorInvalidIdentifierInListAtEndOfSwitchAction = (-200046);
niconst.DAQmxErrorDeviceRemoved =(-200045);
niconst.DAQmxErrorRoutingPathNotAvailable =(-200044);
niconst.DAQmxErrorRoutingHardwareBusy =(-200043);
niconst.DAQmxErrorRequestedSignalInversionForRoutingNotPossible =(-200042);
niconst.DAQmxErrorInvalidRoutingDestinationTerminalName =(-200041);
niconst.DAQmxErrorInvalidRoutingSourceTerminalName = (-200040);
niconst.DAQmxErrorRoutingNotSupportedForDevice = (-200039);
niconst.DAQmxErrorWaitIsLastInstructionOfLoopInScript =(-200038);
niconst.DAQmxErrorClearIsLastInstructionOfLoopInScript = (-200037);
niconst.DAQmxErrorInvalidLoopIterationsInScript =(-200036);
niconst.DAQmxErrorRepeatLoopNestingTooDeepInScript = (-200035);
niconst.DAQmxErrorMarkerPositionOutsideSubsetInScript =(-200034);
niconst.DAQmxErrorSubsetStartOffsetNotAlignedInScript =(-200033);
niconst.DAQmxErrorInvalidSubsetLengthInScript =(-200032);
niconst.DAQmxErrorMarkerPositionNotAlignedInScript = (-200031);
niconst.DAQmxErrorSubsetOutsideWaveformInScript =(-200030);
niconst.DAQmxErrorMarkerOutsideWaveformInScript =(-200029);
niconst.DAQmxErrorWaveformInScriptNotInMem = (-200028);
niconst.DAQmxErrorKeywordExpectedInScript =(-200027);
niconst.DAQmxErrorBufferNameExpectedInScript = (-200026);
niconst.DAQmxErrorProcedureNameExpectedInScript =(-200025);
niconst.DAQmxErrorScriptHasInvalidIdentifier = (-200024);
niconst.DAQmxErrorScriptHasInvalidCharacter =(-200023);
niconst.DAQmxErrorResourceAlreadyReserved =(-200022);
niconst.DAQmxErrorSelfTestFailed = (-200020);
niconst.DAQmxErrorADCOverrun = (-200019);
niconst.DAQmxErrorDACUnderflow = (-200018);
niconst.DAQmxErrorInputFIFOUnderflow = (-200017);
niconst.DAQmxErrorOutputFIFOUnderflow =(-200016);
niconst.DAQmxErrorSCXISerialCommunication =(-200015);
niconst.DAQmxErrorDigitalTerminalSpecifiedMoreThanOnce = (-200014);
niconst.DAQmxErrorDigitalOutputNotSupported =(-200012);
niconst.DAQmxErrorInconsistentChannelDirections =(-200011);
niconst.DAQmxErrorInputFIFOOverflow =(-200010);
niconst.DAQmxErrorTimeStampOverwritten = (-200009);
niconst.DAQmxErrorStopTriggerHasNotOccurred =(-200008);
niconst.DAQmxErrorRecordNotAvailable = (-200007);
niconst.DAQmxErrorRecordOverwritten =(-200006);
niconst.DAQmxErrorDataNotAvailable = (-200005);
niconst.DAQmxErrorDataOverwrittenInDeviceMemory =(-200004);
niconst.DAQmxErrorDuplicatedChannel =(-200003);
niconst.DAQmxWarningTimestampCounterRolledOver =(200003);
niconst.DAQmxWarningInputTerminationOverloaded =(200004);
niconst.DAQmxWarningADCOverloaded = (200005);
niconst.DAQmxWarningPLLUnlocked = (200007);
niconst.DAQmxWarningCounter0DMADuringAIConflict = (200008);
niconst.DAQmxWarningCounter1DMADuringAOConflict = (200009);
niconst.DAQmxWarningStoppedBeforeDone = (200010);
niconst.DAQmxWarningRateViolatesSettlingTime =(200011);
niconst.DAQmxWarningRateViolatesMaxADCRate =(200012);
niconst.DAQmxWarningUserDefInfoStringTooLong =(200013);
niconst.DAQmxWarningTooManyInterruptsPerSecond =(200014);
niconst.DAQmxWarningPotentialGlitchDuringWrite =(200015);
niconst.DAQmxWarningDevNotSelfCalibratedWithDAQmx = (200016);
niconst.DAQmxWarningAISampRateTooLow =(200017);
niconst.DAQmxWarningAIConvRateTooLow =(200018);
niconst.DAQmxWarningReadOffsetCoercion =(200019);
niconst.DAQmxWarningPretrigCoercion = (200020);
niconst.DAQmxWarningSampValCoercedToMax = (200021);
niconst.DAQmxWarningSampValCoercedToMin = (200022);
niconst.DAQmxWarningPropertyVersionNew =(200024);
niconst.DAQmxWarningUserDefinedInfoTooLong =(200025);
niconst.DAQmxWarningCAPIStringTruncatedToFitBuffer =(200026);
niconst.DAQmxWarningSampClkRateTooLow = (200027);
niconst.DAQmxWarningPossiblyInvalidCTRSampsInFiniteDMAAcq = (200028);
niconst.DAQmxWarningRISAcqCompletedSomeBinsNotFilled =(200029);
niconst.DAQmxWarningPXIDevTempExceedsMaxOpTemp =(200030);
niconst.DAQmxWarningOutputGainTooLowForRFFreq = (200031);
niconst.DAQmxWarningOutputGainTooHighForRFFreq =(200032);
niconst.DAQmxWarningMultipleWritesBetweenSampClks = (200033);
niconst.DAQmxWarningDeviceMayShutDownDueToHighTemp =(200034);
niconst.DAQmxWarningRateViolatesMinADCRate =(200035);
niconst.DAQmxWarningSampClkRateAboveDevSpecs =(200036);
niconst.DAQmxWarningCOPrevDAQmxWriteSettingsOverwrittenForHWTimedSinglePoint = (200037);
niconst.DAQmxWarningLowpassFilterSettlingTimeExceedsUserTimeBetween2ADCConversions = (200038);
niconst.DAQmxWarningLowpassFilterSettlingTimeExceedsDriverTimeBetween2ADCConversions = (200039);
niconst.DAQmxWarningSampClkRateViolatesSettlingTimeForGen = (200040);
niconst.DAQmxWarningReadNotCompleteBeforeSampClk =(209800);
niconst.DAQmxWarningWriteNotCompleteBeforeSampClk = (209801);
niconst.DAQmxErrorInvalidSignalModifier_Routing = (-89150);
niconst.DAQmxErrorRoutingDestTermPXIClk10InNotInSlot2_Routing = (-89149);
niconst.DAQmxErrorRoutingDestTermPXIStarXNotInSlot2_Routing = (-89148);
niconst.DAQmxErrorRoutingSrcTermPXIStarXNotInSlot2_Routing =(-89147);
niconst.DAQmxErrorRoutingSrcTermPXIStarInSlot16AndAbove_Routing = (-89146);
niconst.DAQmxErrorRoutingDestTermPXIStarInSlot16AndAbove_Routing =(-89145);
niconst.DAQmxErrorRoutingDestTermPXIStarInSlot2_Routing = (-89144);
niconst.DAQmxErrorRoutingSrcTermPXIStarInSlot2_Routing =(-89143);
niconst.DAQmxErrorRoutingDestTermPXIChassisNotIdentified_Routing =(-89142);
niconst.DAQmxErrorRoutingSrcTermPXIChassisNotIdentified_Routing = (-89141);
niconst.DAQmxErrorTrigLineNotFoundSingleDevRoute_Routing =(-89140);
niconst.DAQmxErrorNoCommonTrigLineForRoute_Routing =(-89139);
niconst.DAQmxErrorResourcesInUseForRouteInTask_Routing =(-89138);
niconst.DAQmxErrorResourcesInUseForRoute_Routing =(-89137);
niconst.DAQmxErrorRouteNotSupportedByHW_Routing = (-89136);
niconst.DAQmxErrorResourcesInUseForInversionInTask_Routing =(-89135);
niconst.DAQmxErrorResourcesInUseForInversion_Routing =(-89134);
niconst.DAQmxErrorInversionNotSupportedByHW_Routing = (-89133);
niconst.DAQmxErrorResourcesInUseForProperty_Routing = (-89132);
niconst.DAQmxErrorRouteSrcAndDestSame_Routing = (-89131);
niconst.DAQmxErrorDevAbsentOrUnavailable_Routing =(-89130);
niconst.DAQmxErrorInvalidTerm_Routing = (-89129);
niconst.DAQmxErrorCannotTristateTerm_Routing =(-89128);
niconst.DAQmxErrorCannotTristateBusyTerm_Routing =(-89127);
niconst.DAQmxErrorCouldNotReserveRequestedTrigLine_Routing =(-89126);
niconst.DAQmxErrorTrigLineNotFound_Routing =(-89125);
niconst.DAQmxErrorRoutingPathNotAvailable_Routing = (-89124);
niconst.DAQmxErrorRoutingHardwareBusy_Routing = (-89123);
niconst.DAQmxErrorRequestedSignalInversionForRoutingNotPossible_Routing = (-89122);
niconst.DAQmxErrorInvalidRoutingDestinationTerminalName_Routing = (-89121);
niconst.DAQmxErrorInvalidRoutingSourceTerminalName_Routing =(-89120);
niconst.DAQmxStatusCouldNotConnectToServer_Routing =(-88900);
niconst.DAQmxStatusDeviceNameNotFound_Routing = (-88717);
niconst.DAQmxStatusLocalRemoteDriverVersionMismatch_Routing = (-88716);
niconst.DAQmxStatusDuplicateDeviceName_Routing =(-88715);
niconst.DAQmxStatusRuntimeAborting_Routing = (-88710);
niconst.DAQmxStatusRuntimeAborted_Routing = (-88709);
niconst.DAQmxStatusResourceNotInPool_Routing = (-88708);
niconst.DAQmxStatusDriverDeviceGUIDNotFound_Routing = (-88705);
