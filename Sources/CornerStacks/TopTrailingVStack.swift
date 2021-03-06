//  CornerStacks
//  Copyright (c) Filip Lazov 2020
//  MIT license - see LICENSE file for more info

import SwiftUI

public struct TopTrailingVStack<Content>: View where Content : View {
  private let content: Content
  let alignment: HorizontalAlignment
  let spacing: CGFloat?
  
  public init(alignment: HorizontalAlignment = .center, spacing: CGFloat? = nil, @ViewBuilder content: () -> Content) {
    self.alignment = alignment
    self.spacing = spacing
    self.content = content()
  }
  
  public var body: some View {
    HStack {
      Spacer()
      VStack(alignment: alignment, spacing: spacing) {
        content
        Spacer()
      }
    }
  }
}
