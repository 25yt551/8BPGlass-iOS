#pragma once

#include <vector>
#include "Vector/Vector2D.h"

class Prediction {
public:
    Prediction();

    bool determineShotResult(bool isAuto);
    void addPathPoint(const Vector2D& point);
    void clearPath();

    const std::vector<Vector2D>& getPathPoints() const { return m_positions; }
    float getConfidence() const { return m_confidence; }

private:
    std::vector<Vector2D> m_positions;
    float m_confidence;
};
