programs =
  [
    { title: 'Program 1',
      subtitle: 'Subtitle 1',
      code: '123456' },
      { title: 'Program 2',
      subtitle: 'Subtitle 2',
      code: '123456'},
      { title: 'Program 3',
      subtitle: 'Subtitle 3',
      code:'123456'},
      { title: 'Program 4',
      subtitle: 'Subtitle 4',
      code: '123456'},
      { title: 'Program 5',
      subtitle: 'Subtitle 5',
      code: '123456'}
  ]

programs.each do |program|
  Program.create(program)
end