<!DOCTYPE html>
<html lang="zh-CN">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>体育高考综合分计算器</title>
    <script src="https://cdn.tailwindcss.com"></script>
    <link href="https://cdn.jsdelivr.net/npm/font-awesome@4.7.0/css/font-awesome.min.css" rel="stylesheet">
    <script>
        tailwind.config = {
            theme: {
                extend: {
                    colors: {
                        primary: '#1E40AF',
                        secondary: '#DC2626',
                        accent: '#F59E0B',
                        neutral: '#6B7280',
                    },
                    fontFamily: {
                        sans: ['Inter', 'system-ui', 'sans-serif'],
                    },
                }
            }
        }
    </script>
    <style type="text/tailwindcss">
        @layer utilities {
            .content-auto {
                content-visibility: auto;
            }
            .shadow-custom {
                box-shadow: 0 10px 25px -5px rgba(0, 0, 0, 0.1), 0 8px 10px -6px rgba(0, 0, 0, 0.1);
            }
            .input-focus {
                @apply focus:ring-2 focus:ring-primary/50 focus:border-primary focus:outline-none;
            }
        }
    </style>
</head>
<body class="bg-gray-50 min-h-screen font-sans">
    <div class="container mx-auto px-4 py-8 max-w-4xl">
        <!-- 标题区域 -->
        <header class="text-center mb-6">
            <h1 class="text-[clamp(1.8rem,5vw,2.8rem)] font-bold text-primary mb-2 tracking-tight">
                体育高考综合分计算器
            </h1>
            
            <!-- 热线电话 -->
            <div class="bg-secondary text-white py-3 px-4 rounded-lg inline-block mb-6 transform transition hover:scale-105 shadow-lg">
                <p class="text-[clamp(1.2rem,3vw,1.5rem)] font-bold">
                    <i class="fa fa-phone-square mr-2"></i>高考志愿规划24小时免费热线:13528986326
                </p>
            </div>
            
            <!-- Logo图片 -->
            <div class="mb-8 flex justify-center">
                <img src="logo.jpg" alt="体育高考logo" class="max-h-40 object-contain border-4 border-primary/20 rounded-lg shadow-md hover:shadow-lg transition-shadow" 
                     onerror="this.src='https://picsum.photos/600/200'; this.alt='体育高考相关图片'">
            </div>
        </header>
        
        <!-- 计算器主体 -->
        <main class="bg-white rounded-xl shadow-custom p-6 md:p-8 mb-8">
            <!-- 输入区域 -->
            <div class="grid md:grid-cols-2 gap-6 mb-8">
                <div class="space-y-2">
                    <label for="cultureScore" class="block text-neutral font-medium">
                        文化课成绩 (满分750分)
                    </label>
                    <div class="relative">
                        <input type="number" id="cultureScore" 
                               class="w-full px-4 py-3 border border-gray-300 rounded-lg input-focus transition-all"
                               min="0" max="750" placeholder="请输入文化课成绩">
                        <span class="absolute right-3 top-1/2 -translate-y-1/2 text-gray-400">分</span>
                    </div>
                    <p id="cultureError" class="text-secondary text-sm hidden">请输入0-750之间的有效分数</p>
                </div>
                
                <div class="space-y-2">
                    <label for="sportsScore" class="block text-neutral font-medium">
                        体育科成绩 (满分300分)
                    </label>
                    <div class="relative">
                        <input type="number" id="sportsScore" 
                               class="w-full px-4 py-3 border border-gray-300 rounded-lg input-focus transition-all"
                               min="0" max="300" placeholder="请输入体育科成绩">
                        <span class="absolute right-3 top-1/2 -translate-y-1/2 text-gray-400">分</span>
                    </div>
                    <p id="sportsError" class="text-secondary text-sm hidden">请输入0-300之间的有效分数</p>
                </div>
            </div>
            
            <!-- 计算按钮 -->
            <div class="flex justify-center mb-8">
                <button id="calculateBtn" class="bg-primary hover:bg-primary/90 text-white font-bold py-3 px-10 rounded-full text-lg shadow-lg hover:shadow-xl transform hover:-translate-y-1 transition-all flex items-center">
                    <i class="fa fa-calculator mr-2"></i>计算综合分
                </button>
            </div>
            
            <!-- 结果展示区域 -->
            <div id="resultArea" class="hidden">
                <div class="bg-gray-50 rounded-lg p-6 border border-gray-200 mb-8">
                    <h2 class="text-xl font-bold text-center mb-4 text-primary">综合分计算结果</h2>
                    <div class="flex flex-col md:flex-row justify-around items-center gap-4">
                        <div class="text-center">
                            <p class="text-neutral mb-1">文化课成绩</p>
                  
