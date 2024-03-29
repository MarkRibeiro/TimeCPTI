#ifndef HORTA_H
#define HORTA_H

#include <QObject>

#include "Dono.h"
#include "Plantacao.h"

class Horta : public QObject
{
    Q_OBJECT
public:
    explicit Horta( Dono dono,  Plantacao plantacao, QObject *parent = nullptr);

    Dono dono() const;
    void setDono(const Dono &dono);

    Plantacao plantacao() const;
    void setPlantacao(const Plantacao &plantacao);

signals:

public slots:

private:
    Dono m_dono;
    Plantacao m_plantacao;
};

#endif // HORTA_H
