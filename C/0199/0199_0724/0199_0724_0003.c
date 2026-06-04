#include <stdlib.h>
extern unsigned char v3 (unsigned char);
extern unsigned char (*v4) (unsigned char);
extern signed int v5 (void);
extern signed int (*v6) (void);
extern signed int v7 (void);
extern signed int (*v8) (void);
extern void v9 (unsigned char);
extern void (*v10) (unsigned char);
unsigned short v11 (unsigned short);
unsigned short (*v12) (unsigned short) = v11;
extern void v13 (unsigned short, unsigned int, unsigned int);
extern void (*v14) (unsigned short, unsigned int, unsigned int);
extern signed char v15 (unsigned char);
extern signed char (*v16) (unsigned char);
extern void v17 (void);
extern void (*v18) (void);
extern void v19 (unsigned char, signed char, signed char);
extern void (*v20) (unsigned char, signed char, signed char);
extern unsigned int v21 (void);
extern unsigned int (*v22) (void);
signed short v23 (unsigned int);
signed short (*v24) (unsigned int) = v23;
extern signed char v27 (unsigned int, unsigned short, unsigned short, signed char);
extern signed char (*v28) (unsigned int, unsigned short, unsigned short, signed char);
extern signed char v29 (void);
extern signed char (*v30) (void);
extern int history[];
extern int history_index;
extern int trace;
signed int v92 = 1;
unsigned int v91 = 7U;
signed short v90 = -3;

signed short v23 (unsigned int v93)
{
history[history_index++] = (int)v93;
{
for (;;) {
unsigned int v96 = 5U;
unsigned short v95 = 1;
signed short v94 = -3;
trace++;
switch (trace)
{
case 5: 
{
signed char v97;
v97 = v29 ();
history[history_index++] = (int)v97;
}
break;
case 13: 
return v94;
default: abort ();
}
}
}
}

unsigned short v11 (unsigned short v98)
{
history[history_index++] = (int)v98;
{
for (;;) {
unsigned char v101 = 6;
signed char v100 = 1;
unsigned char v99 = 7;
trace++;
switch (trace)
{
case 3: 
{
unsigned short v102;
unsigned int v103;
unsigned int v104;
v102 = 2 + 6;
v103 = 0U + 4U;
v104 = 7U + 7U;
v13 (v102, v103, v104);
}
break;
case 15: 
return 4;
default: abort ();
}
}
}
}
