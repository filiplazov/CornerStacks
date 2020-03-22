//  CornerStacks
//  Copyright (c) Filip Lazov 2020
//  MIT license - see LICENSE file for more info

import SwiftUI

public struct BottomLeadingVStack<Content>: View where Content : View {
  let alignment: HorizontalAlignment
  let spacing: CGFloat?
  let content: () -> Content
  
  public init(alignment: HorizontalAlignment = .center, spacing: CGFloat? = nil, @ViewBuilder content: @escaping () -> Content) {
    self.alignment = alignment
    self.spacing = spacing
    self.content = content
  }
  
  public var body: some View {
    HStack {
      VStack(alignment: alignment, spacing: spacing) {
        Spacer()
        content()
      }
      Spacer()
    }
  }
}
