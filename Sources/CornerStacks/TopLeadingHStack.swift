//  CornerStacks
//  Copyright (c) Filip Lazov 2020
//  MIT license - see LICENSE file for more info

import SwiftUI

public struct TopLeadingHStack<Content>: View where Content: View {
  let alignment: VerticalAlignment
  let spacing: CGFloat?
  let content: () -> Content
  
  public init(alignment: VerticalAlignment = .center, spacing: CGFloat? = nil, @ViewBuilder content: @escaping () -> Content) {
    self.alignment = alignment
    self.spacing = spacing
    self.content = content
  }
  
  public var body: some View {
    VStack {
      HStack(alignment: alignment, spacing: spacing) {
        content()
        Spacer()
      }
      Spacer()
    }
  }
}
