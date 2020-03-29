//  CornerStacks
//  Copyright (c) Filip Lazov 2020
//  MIT license - see LICENSE file for more info

import SwiftUI

public struct BottomLeadingHStack<Content>: View where Content: View {
  private let content: Content
  let alignment: VerticalAlignment
  let spacing: CGFloat?
  
  public init(alignment: VerticalAlignment = .center, spacing: CGFloat? = nil, @ViewBuilder content: () -> Content) {
    self.alignment = alignment
    self.spacing = spacing
    self.content = content()
  }
  
  public var body: some View {
    VStack {
      Spacer()
      HStack(alignment: alignment, spacing: spacing) {
        content
        Spacer()
      }
    }
  }
}
