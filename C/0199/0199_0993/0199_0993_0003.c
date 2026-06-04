#include <stdlib.h>
signed char v3 (void);
signed char (*v4) (void) = v3;
extern signed int v5 (unsigned short, unsigned int, signed int, unsigned short);
extern signed int (*v6) (unsigned short, unsigned int, signed int, unsigned short);
signed short v7 (signed char, signed char, signed char, signed char);
signed short (*v8) (signed char, signed char, signed char, signed char) = v7;
extern signed short v9 (signed short, unsigned int);
extern signed short (*v10) (signed short, unsigned int);
extern signed short v11 (unsigned char);
extern signed short (*v12) (unsigned char);
extern signed short v13 (unsigned char);
extern signed short (*v14) (unsigned char);
extern unsigned short v15 (void);
extern unsigned short (*v16) (void);
extern unsigned short v17 (void);
extern unsigned short (*v18) (void);
extern signed int v19 (unsigned char, unsigned char, signed char);
extern signed int (*v20) (unsigned char, unsigned char, signed char);
extern unsigned char v21 (void);
extern unsigned char (*v22) (void);
extern unsigned short v23 (void);
extern unsigned short (*v24) (void);
extern signed int v25 (unsigned short, unsigned int);
extern signed int (*v26) (unsigned short, unsigned int);
extern unsigned short v27 (unsigned char, signed short, unsigned char);
extern unsigned short (*v28) (unsigned char, signed short, unsigned char);
signed short v29 (void);
signed short (*v30) (void) = v29;
extern int history[];
extern int history_index;
extern int trace;
unsigned int v103 = 3U;
signed short v102 = -3;
unsigned short v101 = 4;

signed short v29 (void)
{
{
for (;;) {
signed char v106 = -1;
unsigned char v105 = 4;
unsigned char v104 = 5;
trace++;
switch (trace)
{
case 4: 
return 2;
case 10: 
return 0;
default: abort ();
}
}
}
}

signed short v7 (signed char v107, signed char v108, signed char v109, signed char v110)
{
history[history_index++] = (int)v107;
history[history_index++] = (int)v108;
history[history_index++] = (int)v109;
history[history_index++] = (int)v110;
{
for (;;) {
unsigned int v113 = 6U;
unsigned int v112 = 7U;
signed short v111 = 2;
trace++;
switch (trace)
{
case 3: 
{
signed short v114;
v114 = v29 ();
history[history_index++] = (int)v114;
}
break;
case 5: 
return v111;
default: abort ();
}
}
}
}

signed char v3 (void)
{
{
for (;;) {
unsigned char v117 = 6;
unsigned int v116 = 0U;
unsigned int v115 = 1U;
trace++;
switch (trace)
{
case 1: 
return 3;
default: abort ();
}
}
}
}
