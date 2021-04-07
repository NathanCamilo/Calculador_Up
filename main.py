# This Python file uses the following encoding: utf-8
import sys
import os
import math

from PySide2.QtGui import QGuiApplication
from PySide2.QtQml import QQmlApplicationEngine
from PySide2.QtCore import QObject, Slot, Signal

global a, at, ad, c, ctr, cnr, coa, cer, cte, dw1, dw2, dw3, dm, e, k, ka, k1, k2, k3, kp, keq, s, d, p, pe, epa, ang, escmtpo, espmtpo, espmtpcb, escmtpcb, btnSextavado, btnRddfenda, btnCldBld, btnfnssxt,btnfnscdr,btnfnscld, tensao1, tensao2, tensao3
'''
Lista de variáveis
    a = tamanho dos cones iniciais
    c = comprimento
    d = diametro
    p = passo
    pe = percentual roscado
    epa = escoamentoparafuso = escoamento do material parafuso
    ang = angulo de dimensionamento alfa
    escmtpo = escmatpporca  = tensão de escoamento do material próximo a porca
    espmtpo = espmatpporca  = espessura do material próximo a porca
    espmtpcb = espmatpcbpar = espessura do material próximo a cabeça do parafuso
    escmtpcb = escmatpcbpar = tensão de escoamento do material próximo a cabeça do parafuso
    k = altura da cabeça
    k1 = constante de mola 1
    k2 = constante de mola 2
    k3 = constante de mola 3
    kp = constante de mola do parafuso
    s = medida entre as faces sextavadas
    e = medida entre os vertices sextavados
    cte = constante =0.001 para trabalhar com metros
    ctr = comprimento total roscado
    cnr = comprimento não roscado
    cer = comprimento efetivamente roscado
    kep = constante de mola equivalente
    coa = constante c do arranjo
    dm = diametro médio
    at = área roscada
    ad = área não roscada
    ctpf = constante
'''
a = 0.1
c = ""
d = ""
p = ""
pe = ""
epa = ""
ang = ""
escmtpo = ""
espmtpo = ""
espmtpcb = ""
escmtpcb = ""
btnSextavado = True
btnRddfenda = True
btnCldBld = True
btnfnssxt = True
btnfnscdr = True
btnfnscld = True
cte = 0.001
k = 0.1
k1 = 0.1
k2 = 0.1
k3 = 0.1
kep = 0.1
e = 0.1
s = 0.1
ctr = 0.1
cnr = 0.1
cer = 0.1
dw1 = 0.1
dw2 = 0.1
dw3 = 0.1
tensao1 = 0.1
tensao2 = 0.1
tensao3= 0.1
coa = 0.1
dm = 0.1
at = 0.1
ad = 0.1
ctpf = 0.1
def printer(c):
    print(c)

class MainWindow(QObject):

    def __init__(self):
        QObject.__init__(self)

    # Sinal de envio das variaveis
    getSextavadobtn = Signal(bool)
    getCbcRddBtn = Signal(bool)
    getCbcCldFendaBtn = Signal(bool)
    getComprimento = Signal(float)
    getDiametro = Signal(float)
    getPasso = Signal(float)
    getPercentual = Signal(float)
    getEscoamentoparafuso = Signal(float)
    getAngulo = Signal(float)
    getEscmatpporca = Signal(float)
    getEspmatpporca = Signal(float)
    getEspmatpcbpar = Signal(float)
    getEscmatpcbpar = Signal(float)
    getFinishsxtBtn = Signal(bool)
    getFinishcdrBtn = Signal(bool)
    getFinishcldBtn = Signal(bool)
    getResult1Btn = Signal(bool)
    getResult2Btn = Signal(bool)
    getResult3Btn = Signal(bool)
    getK = Signal(str)
    getS = Signal(str)
    getE = Signal(str)
    getCtr = Signal(str)
    getCer = Signal(str)
    getCnr = Signal(str)
    getKp = Signal(str)
    getTensao1 = Signal(str)
    getTensao2 = Signal(str)
    getTensao3 = Signal(str)
    getDw1 = Signal(str)
    getDw2 = Signal(str)
    getDw3 = Signal(str)
    getK1 = Signal(str)
    getK2 = Signal(str)
    getK3 = Signal(str)
    getKeq = Signal(str)
    getCtpf = Signal(str)
    getetVal1 = Signal(str)
    getVal2 = Signal(str)
    getKa = Signal(str)
    getVall2 = Signal(str)
    getResetBtn = Signal(bool)

    @Slot(bool)
    def resetBtn(self, reset):
        global c, d, kp, a, p, pe, epa, ang, escmtpo, espmtpo, espmtpcb, escmtpcb, tensao1, tensao2, tensao3, dw1,dw2,dw3,keq,ctpf,k1,k2,k3
        kp = 0
        tensao1 = 0
        tensao2 = 0
        tensao3 = 0
        dw1 = 0
        dw2 = 0
        dw3 = 0
        keq = 0
        ctpf = 0
        k1 = 0
        k2 = 0
        k3 = 0
        a = 0
        c = 0
        d = 0
        p = 0
        pe = 0
        epa = 0
        ang = 0
        escmtpo = 0
        espmtpo = 0
        espmtpcb = 0
        escmtpcb = 0

        self.getResetBtn.emit(reset)

    @Slot(bool)
    def sextavadoBtn(self, sextavado):
        global btnSextavado
        self.getSextavadobtn.emit(sextavado)
        sextavado = btnSextavado
        print(sextavado)

    @Slot(bool)
    def cbcrddBtn(self, cbcrdd):
        global btnRddfenda
        self.getCbcRddBtn.emit(cbcrdd)
        cbcrdd = btnRddfenda
        print(cbcrdd)

    @Slot(bool)
    def cbcCldFendaBtn(self, cbccld):
        global btnCldBld
        self.getCbcCldFendaBtn.emit(cbccld)
        cbccld = btnCldBld
        print(cbccld)

    # Função que envia o comprimento para o backend
    @Slot(float)
    def comprimentoText(self, comprimento):
        global c
        self.getComprimento.emit(comprimento)
        c = comprimento *cte

    # Função que envia o diametro para o backend
    @Slot(float)
    def diametroText(self, diametro):
        global d
        self.getDiametro.emit(diametro)
        d = diametro * cte


    # Função que envia o passo para o backend
    @Slot(float)
    def passoText(self, passo):
        global p
        self.getPasso.emit(passo)
        p = passo * cte

    # Função que envia o percentual para o backend
    @Slot(float)
    def percentualText(self, percentual):
        global pe
        self.getPercentual.emit(percentual)
        pe = percentual

    # Função que envia o escoamento do parafuso para o backend
    @Slot(float)
    def escoamentoparafusoText(self, escoamentoparafuso):
        global epa
        self.getEscoamentoparafuso.emit(escoamentoparafuso)
        epa = escoamentoparafuso

    # Função que envia o angulo para o backend
    @Slot(float)
    def anguloText(self, angulo):
        global ang
        self.getAngulo.emit(angulo)
        ang = angulo

    # Função que envia o escoamento do material da porca para o backend
    @Slot(float)
    def escmatpporcaText(self, escmatpporca):
        global escmtpo
        self.getEscmatpporca.emit(escmatpporca)
        escmtpo = escmatpporca

    # Função que envia a espessura do material mais próximo a porca para o backend
    @Slot(float)
    def espmatpporcaText(self, espmatpporca):
        global espmtpo
        self.getEspmatpporca.emit(espmatpporca)
        espmtpo = espmatpporca * cte

    # Função que envia o escoamento do material mais próximo ao parafuso para o backend
    @Slot(float)
    def espmatpcbparText(self, espmatpcbpar):
        global espmtpcb
        self.getEspmatpcbpar.emit(espmatpcbpar)
        espmtpcb = espmatpcbpar * cte

    # Função que envia a espessura do material mais próximo a cabeça do parafuso para o label
    @Slot(float)
    def escmatpcbparText(self, escmatpcbpar):
        global escmtpcb
        self.getEscmatpcbpar.emit(escmatpcbpar)
        escmtpcb = escmatpcbpar

    @Slot(bool)
    def finishsxtBtn(self, finishsext):
        global btnfnssxt
        self.getFinishsxtBtn.emit(finishsext)
        finishsext = btnfnssxt
        if btnSextavado == True:
           print('O botão sextavado foi escolhido')

           # Calculando dimensões da cabeça do parafuso

           valp = 1.5           # constante para calculo de dw
           k = (d * 0.7)/cte    # altura da cabeça do parafuso
           s = (d * 1.7)/cte    # medida entre as faces sextavadas
           e = (d * 2.0)/cte      # medida entre os vertices sextavados

           # Emitindo variáveis da cabeça do parafuso sextavado

           self.getK.emit("Altura da cabeça do parafuso: {:.1f} mm".format((k)))
           self.getS.emit("Medida entre as faces sextavadas: {:.1f} mm".format((s)))
           self.getE.emit("Medida entre os vertices sextavados: {:.1f} mm".format((e)))

            # condicionando dimensões do parafuso

           global ctr
           global cnr
           global cer
           ctr = (pe * c) / 100               # comprimento total roscado
           cnr = (c - ctr)                      # comprimento não roscado
           cer = (espmtpo + espmtpcb) - cnr    # comprimento efetivamente roscado

            # Calculando tamanho dos cones

           a = (espmtpo + espmtpcb)/2       # tamanho dos cones iniciais
           global tensao1
           global tensao2
           global tensao3
           global dw1
           global dw2
           global dw3
           global keq
           global ctpf
           global k1
           global k2
           global k3

           if espmtpo < a:  #3 cones de deformação
                tensao1 = espmtpo
                tensao2 = a - tensao1
                tensao3 = a
                print('\nNúmeros de cone de deformação : 3')
                dw1 = valp * diametro
                dw2 = (math.tan((ang * math.pi) / 180) * tensao3 + (0.75 * d)) * 2
                dw3 = dw1
                k1 = (escmtpo * math.pi * d * math.tan((ang * math.pi) / 180)) / (math.log(((2 * tensao1 * math.tan((ang * math.pi) / 180) + dw1 - d) / (2 * tensao1 * math.tan(ang * math.pi / 180) + dw1 + d)) * ((dw1 + d) / (dw1 - d))))
                k2 = (escmtpcb * math.pi * d * math.tan((ang * math.pi) / 180)) / (math.log(((2 * tensao2 * math.tan((ang * math.pi) / 180) + dw2 - d) / (2 * tensao2 * math.tan(ang * math.pi / 180) + dw2 + d)) * ((dw2 + d) / (dw2 - d))))
                k3 = (escmtpcb * math.pi * d * math.tan((ang * math.pi) / 180)) / (math.log(((2 * tensao3 * math.tan((ang * math.pi) / 180) + dw3 - d) / (2 * tensao3 * math.tan(ang * math.pi / 180) + dw3 + d)) * ((dw3 + d) / (dw3 - d))))
                keq = 1 / ((1 / k1) + (1 / k2) + (1 / k3))

           if espmtpo == a:  #3 cones de deformação
               tensao1 = a
               tensao2 = a
               print('\nNumeros de cone de deformação: 2')
               dw1 = valp * d
               dw2 = dw1
               k1 = (escmtpo * math.pi * d * math.tan((ang * math.pi) / 180)) / (math.log(((2 * tensao1 * math.tan((ang * math.pi) / 180) + dw1 - d) / (2 * tensao1 * math.tan(ang * math.pi / 180) + dw1 + d)) * ((dw1 + d) / (dw1 - d))))
               k2 = (escmtpcb * math.pi * d * math.tan((ang * math.pi) / 180)) / (math.log(((2 * tensao2 * math.tan((ang * math.pi) / 180) + dw2 - d) / (2 * tensao2 * math.tan(ang * math.pi / 180) + dw2 + d)) * ((dw2 + d) / (dw2 - d))))
               keq = 1 / ((1 / k1) + (1 / k2))

           elif espmtpo > a:
               tensao1 = a
               tensao3 = espmtpcb
               tensao2 = a - tensao3
               print('\nNumeros de cone de deformação: 3')
               dw1 = valp * d
               dw3 = dw1
               dw2 = (math.tan(ang * math.pi / 180) * tensao3 + 0.75 * d) * 2
               k1 = (escmtpo * math.pi * d * math.tan((ang * math.pi) / 180)) / (math.log(((2 * tensao1 * math.tan(
                      (ang * math.pi) / 180) + dw1 - d) / (2 * tensao1 * math.tan(ang * math.pi / 180) + dw1 + d)) * (
                      (dw1 + d) / (dw1 - d))))
               k2 = (escmtpo * math.pi * d * math.tan((ang * math.pi) / 180)) / (math.log(((2 * tensao2 * math.tan(
                      (ang * math.pi) / 180) + dw2 - d) / (2 * tensao2 * math.tan(ang * math.pi / 180) + dw2 + d)) * (
                      (dw2 + d) / (dw2 - d))))
               k3 = (escmtpcb * math.pi * d * math.tan((ang * math.pi) / 180)) / (math.log(((2 * tensao3 * math.tan(
                      (ang * math.pi) / 180) + dw3 - d) / (2 * tensao3 * math.tan(ang * math.pi / 180) + dw3 + d)) * (
                      (dw3 + d) / (dw3 - d))))
               keq = 1 / ((1 / k1) + (1 / k2) + (1 / k3))

               #variaveis do parafuso
           dm = d - 0.6495 * p                 # diametro médio
           at = (math.pi * (dm**2)) / 4        # área roscada
           ad = (math.pi * (d**2)) / 4         # area não roscada
           global kp

           kp = (epa * ad * at) / ((cnr * at) + (cer * ad))  # constante de mola do parafuso
           ctpf = kp / (kp + keq) #constante C do arranjo



    @Slot(bool)
    def finishcdrBtn(self, finishcdr):
        global btnfnscdr
        self.getFinishcdrBtn.emit(finishcdr)
        finishcdr = btnfnscdr
        if btnRddfenda == True:
            print('O botão cabeça redonda com fenda foi escolhido')
            valp = 1.9              #constante para calculo de dw
            val1 = (d * 1.9)/cte    # diametro da cabeça
            val2 = d/cte            # raio da circunferencia da cabeça

            # Emitindo variáveis da cabeça do parafuso sextavado

            self.getVal1.emit("Diametro da cabeça do parafuso: {:.2f} mm".format(val1))
            self.getVal2.emit("Raio da circunferência da cabeça do parafuso: {:.1f} mm".format(val2))


            # atualizando variaveis globais
            global ctr
            global cnr
            global cer

            # condicionando dimensões do parafuso
            ctr = (pe * c) / 100               # comprimento total roscado
            cnr = (c - ctr)                      # comprimento não roscado
            cer = (espmtpo + espmtpcb) - cnr    # comprimento efetivamente roscado

             # Calculando tamanho dos cones

            a = (espmtpo + espmtpcb)/2       # tamanho dos cones iniciais

            # atualizando variaveis globais
            global tensao1
            global tensao2
            global tensao3
            global dw1
            global dw2
            global dw3
            global keq
            global ctpf
            global k1
            global k2
            global k3

            if espmtpo < a:  #3 cones de deformação
                 tensao1 = espmtpo
                 tensao2 = a - tensao1
                 tensao3 = a
                 print('\nNúmeros de cone de deformação : 3')
                 dw1 = valp * diametro
                 dw2 = (math.tan((ang * math.pi) / 180) * tensao3 + (0.75 * d)) * 2
                 dw3 = dw1
                 k1 = (escmtpo * math.pi * d * math.tan((ang * math.pi) / 180)) / (math.log(((2 * tensao1 * math.tan((ang * math.pi) / 180) + dw1 - d) / (2 * tensao1 * math.tan(ang * math.pi / 180) + dw1 + d)) * ((dw1 + d) / (dw1 - d))))
                 k2 = (escmtpcb * math.pi * d * math.tan((ang * math.pi) / 180)) / (math.log(((2 * tensao2 * math.tan((ang * math.pi) / 180) + dw2 - d) / (2 * tensao2 * math.tan(ang * math.pi / 180) + dw2 + d)) * ((dw2 + d) / (dw2 - d))))
                 k3 = (escmtpcb * math.pi * d * math.tan((ang * math.pi) / 180)) / (math.log(((2 * tensao3 * math.tan((ang * math.pi) / 180) + dw3 - d) / (2 * tensao3 * math.tan(ang * math.pi / 180) + dw3 + d)) * ((dw3 + d) / (dw3 - d))))
                 keq = 1 / ((1 / k1) + (1 / k2) + (1 / k3))

            if espmtpo == a:  #3 cones de deformação
                tensao1 = a
                tensao2 = a
                print('\nNumeros de cone de deformação: 2')
                dw1 = valp * d
                dw2 = dw1
                k1 = (escmtpo * math.pi * d * math.tan((ang * math.pi) / 180)) / (math.log(((2 * tensao1 * math.tan((ang * math.pi) / 180) + dw1 - d) / (2 * tensao1 * math.tan(ang * math.pi / 180) + dw1 + d)) * ((dw1 + d) / (dw1 - d))))
                k2 = (escmtpcb * math.pi * d * math.tan((ang * math.pi) / 180)) / (math.log(((2 * tensao2 * math.tan((ang * math.pi) / 180) + dw2 - d) / (2 * tensao2 * math.tan(ang * math.pi / 180) + dw2 + d)) * ((dw2 + d) / (dw2 - d))))
                keq = 1 / ((1 / k1) + (1 / k2))

            elif espmtpo > a:
                tensao1 = a
                tensao3 = espmtpcb
                tensao2 = a - tensao3
                print('\nNumeros de cone de deformação: 3')
                dw1 = valp * d
                dw3 = dw1
                dw2 = (math.tan(ang * math.pi / 180) * tensao3 + 0.75 * d) * 2
                k1 = (escmtpo * math.pi * d * math.tan((ang * math.pi) / 180)) / (math.log(((2 * tensao1 * math.tan(
                       (ang * math.pi) / 180) + dw1 - d) / (2 * tensao1 * math.tan(ang * math.pi / 180) + dw1 + d)) * (
                       (dw1 + d) / (dw1 - d))))
                k2 = (escmtpo * math.pi * d * math.tan((ang * math.pi) / 180)) / (math.log(((2 * tensao2 * math.tan(
                       (ang * math.pi) / 180) + dw2 - d) / (2 * tensao2 * math.tan(ang * math.pi / 180) + dw2 + d)) * (
                       (dw2 + d) / (dw2 - d))))
                k3 = (escmtpcb * math.pi * d * math.tan((ang * math.pi) / 180)) / (math.log(((2 * tensao3 * math.tan(
                       (ang * math.pi) / 180) + dw3 - d) / (2 * tensao3 * math.tan(ang * math.pi / 180) + dw3 + d)) * (
                       (dw3 + d) / (dw3 - d))))
                keq = 1 / ((1 / k1) + (1 / k2) + (1 / k3))

                #variaveis do parafuso
            dm = d - 0.6495 * p                 # diametro médio
            at = (math.pi * (dm**2)) / 4        # área roscada
            ad = (math.pi * (d**2)) / 4         # area não roscada
            global kp

            kp = (epa * ad * at) / ((cnr * at) + (cer * ad))  # constante de mola do parafuso
            ctpf = kp / (kp + keq) #constante C do arranjo

    @Slot(bool)
    def finishcldBtn(self, finishcld):
        global btnfnscld
        self.getFinishcldBtn.emit(finishcld)
        finishcld = btnfnscld
        if btnCldBld == True:
            print('O botão cabeça cilindrica boleada com fenda foi escolhido')
            valp = 1.7                   #constante para calculo de dw
            val1 = (d * 1.7)/cte         # diametro da cabeça
            vall2 = (d * 1.4)/cte        # raio da circunferencia da cabeça
            ka = (d * 0.66)/cte          # altura da cabeça do parafuso

            # Emitindo variáveis da cabeça do parafuso sextavado

            self.getVal1.emit("Diametro da cabeça do parafuso: {:.2f} mm".format(val1))
            self.getVall2.emit("Raio da circunferência da cabeça do parafuso: {:.2f} mm".format(vall2))
            self.getKa.emit("Altura da cabeça do parafuso: {:.1f} mm".format(ka))
            # atualizando variaveis globais
            global ctr
            global cnr
            global cer

            # condicionando dimensões do parafuso
            ctr = (pe * c) / 100               # comprimento total roscado
            cnr = (c - ctr)                      # comprimento não roscado
            cer = (espmtpo + espmtpcb) - cnr    # comprimento efetivamente roscado

             # Calculando tamanho dos cones

            a = (espmtpo + espmtpcb)/2       # tamanho dos cones iniciais

            # atualizando variaveis globais
            global tensao1
            global tensao2
            global tensao3
            global dw1
            global dw2
            global dw3
            global keq
            global ctpf
            global k1
            global k2
            global k3

            if espmtpo < a:  #3 cones de deformação
                 tensao1 = espmtpo
                 tensao2 = a - tensao1
                 tensao3 = a
                 print('\nNúmeros de cone de deformação : 3')
                 dw1 = valp * diametro
                 dw2 = (math.tan((ang * math.pi) / 180) * tensao3 + (0.75 * d)) * 2
                 dw3 = dw1
                 k1 = (escmtpo * math.pi * d * math.tan((ang * math.pi) / 180)) / (math.log(((2 * tensao1 * math.tan((ang * math.pi) / 180) + dw1 - d) / (2 * tensao1 * math.tan(ang * math.pi / 180) + dw1 + d)) * ((dw1 + d) / (dw1 - d))))
                 k2 = (escmtpcb * math.pi * d * math.tan((ang * math.pi) / 180)) / (math.log(((2 * tensao2 * math.tan((ang * math.pi) / 180) + dw2 - d) / (2 * tensao2 * math.tan(ang * math.pi / 180) + dw2 + d)) * ((dw2 + d) / (dw2 - d))))
                 k3 = (escmtpcb * math.pi * d * math.tan((ang * math.pi) / 180)) / (math.log(((2 * tensao3 * math.tan((ang * math.pi) / 180) + dw3 - d) / (2 * tensao3 * math.tan(ang * math.pi / 180) + dw3 + d)) * ((dw3 + d) / (dw3 - d))))
                 keq = 1 / ((1 / k1) + (1 / k2) + (1 / k3))

            if espmtpo == a:  #3 cones de deformação
                tensao1 = a
                tensao2 = a
                print('\nNumeros de cone de deformação: 2')
                dw1 = valp * d
                dw2 = dw1
                k1 = (escmtpo * math.pi * d * math.tan((ang * math.pi) / 180)) / (math.log(((2 * tensao1 * math.tan((ang * math.pi) / 180) + dw1 - d) / (2 * tensao1 * math.tan(ang * math.pi / 180) + dw1 + d)) * ((dw1 + d) / (dw1 - d))))
                k2 = (escmtpcb * math.pi * d * math.tan((ang * math.pi) / 180)) / (math.log(((2 * tensao2 * math.tan((ang * math.pi) / 180) + dw2 - d) / (2 * tensao2 * math.tan(ang * math.pi / 180) + dw2 + d)) * ((dw2 + d) / (dw2 - d))))
                keq = 1 / ((1 / k1) + (1 / k2))

            elif espmtpo > a:
                tensao1 = a
                tensao3 = espmtpcb
                tensao2 = a - tensao3
                print('\nNumeros de cone de deformação: 3')
                dw1 = valp * d
                dw3 = dw1
                dw2 = (math.tan(ang * math.pi / 180) * tensao3 + 0.75 * d) * 2
                k1 = (escmtpo * math.pi * d * math.tan((ang * math.pi) / 180)) / (math.log(((2 * tensao1 * math.tan(
                       (ang * math.pi) / 180) + dw1 - d) / (2 * tensao1 * math.tan(ang * math.pi / 180) + dw1 + d)) * (
                       (dw1 + d) / (dw1 - d))))
                k2 = (escmtpo * math.pi * d * math.tan((ang * math.pi) / 180)) / (math.log(((2 * tensao2 * math.tan(
                       (ang * math.pi) / 180) + dw2 - d) / (2 * tensao2 * math.tan(ang * math.pi / 180) + dw2 + d)) * (
                       (dw2 + d) / (dw2 - d))))
                k3 = (escmtpcb * math.pi * d * math.tan((ang * math.pi) / 180)) / (math.log(((2 * tensao3 * math.tan(
                       (ang * math.pi) / 180) + dw3 - d) / (2 * tensao3 * math.tan(ang * math.pi / 180) + dw3 + d)) * (
                       (dw3 + d) / (dw3 - d))))
                keq = 1 / ((1 / k1) + (1 / k2) + (1 / k3))

                #variaveis do parafuso
            dm = d - 0.6495 * p                 # diametro médio
            at = (math.pi * (dm**2)) / 4        # área roscada
            ad = (math.pi * (d**2)) / 4         # area não roscada
            global kp

            kp = (epa * ad * at) / ((cnr * at) + (cer * ad))  # constante de mola do parafuso
            ctpf = kp / (kp + keq) #constante C do arranjo

    @Slot(bool)
    def result1Btn(self, result1):
        self.getResult1Btn.emit(result1)
        self.getCtr.emit("Comprimento total roscado: {:.2f} mm".format((ctr/0.001)))
        self.getCer.emit("Comprimento efetivamente roscado: {:.2f} mm".format((cer/0.001)))
        self.getCnr.emit("Comprimento não roscado: {:.2f} mm".format((cnr/0.001)))
        self.getKp.emit("Constante de mola do parafuso: {:.5f} KN/mm".format((kp)))

    @Slot(bool)
    def result2Btn(self, result2):
        self.getResult2Btn.emit(result2)
        self.getTensao1.emit("Espessura do cone próximo a porca: {:.2f} mm".format(tensao1/0.001))
        self.getTensao2.emit("Espessura do cone intermediário: {:.2f} mm".format(tensao2/0.001))
        self.getTensao3.emit("Espessura do cone próximo a cabeça do parafuso: {:.2f} mm".format(tensao3/0.001))
        self.getDw1.emit("Dw1: {:.2f} mm".format(dw1))
        self.getDw2.emit("Dw2: {:.2f} mm".format(dw2))
        self.getDw3.emit("Dw3: {:.2f} mm".format(dw3))

    @Slot(bool)
    def result3Btn(self, result3):
        self.getResult3Btn.emit(result3)
        self.getK1.emit("Constante de mola 1: {:.5f} KN/mm".format(k1))
        self.getK2.emit("Constante de mola 2: {:.5f} KN/mm".format(k2))
        self.getK3.emit("Constante de mola 3: {:.5f} KN/mm".format(k3))
        self.getKeq.emit("Constante de mola equivalente da união: {:.5f} KN/mm".format(keq))
        self.getCtpf.emit("Constante C do arranjo: {:.5f} KN/mm".format(ctpf))





if __name__ == "__main__":
    app = QGuiApplication(sys.argv)
    engine = QQmlApplicationEngine()

    # Pegando dados
    main = MainWindow()
    engine.rootContext().setContextProperty("backend", main)

    # Carregando dados do QML
    engine.load(os.path.join(os.path.dirname(__file__), "qml/splashScreen.qml"))

    if not engine.rootObjects():
        sys.exit(-1)
    sys.exit(app.exec_())
