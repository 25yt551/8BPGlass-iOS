#import "Prediction.h"

Prediction::Prediction()
    : m_confidence(0.0f)
{
}

bool Prediction::determineShotResult(bool isAuto) {
    if (m_positions.empty()) {
        m_confidence = 0.0f;
        return false;
    }

    Vector2D last = m_positions.back();
    bool hitTarget = (last.x > 0 && last.x < 1000 && last.y > 0 && last.y < 500);
    m_confidence = hitTarget ? 0.85f : 0.15f;
    return hitTarget;
}

void Prediction::addPathPoint(const Vector2D& point) {
    m_positions.push_back(point);
}

void Prediction::clearPath() {
    m_positions.clear();
    m_confidence = 0.0f;
}
