#include <stdlib.h>
extern unsigned short v5 (signed int, unsigned char, unsigned int, unsigned short);
extern unsigned short (*v6) (signed int, unsigned char, unsigned int, unsigned short);
extern unsigned int v7 (void);
extern unsigned int (*v8) (void);
extern unsigned int v9 (void);
extern unsigned int (*v10) (void);
extern signed short v11 (signed char, unsigned short);
extern signed short (*v12) (signed char, unsigned short);
extern signed int v15 (unsigned char);
extern signed int (*v16) (unsigned char);
unsigned short v17 (signed int, unsigned short);
unsigned short (*v18) (signed int, unsigned short) = v17;
extern signed int v19 (signed int, unsigned short, signed int);
extern signed int (*v20) (signed int, unsigned short, signed int);
extern unsigned short v21 (unsigned short, unsigned int, unsigned int);
extern unsigned short (*v22) (unsigned short, unsigned int, unsigned int);
unsigned int v23 (unsigned int, signed char, unsigned char);
unsigned int (*v24) (unsigned int, signed char, unsigned char) = v23;
extern signed int v25 (signed short, signed short, signed short, signed char);
extern signed int (*v26) (signed short, signed short, signed short, signed char);
extern signed char v27 (signed int);
extern signed char (*v28) (signed int);
extern void v29 (void);
extern void (*v30) (void);
extern int history[];
extern int history_index;
extern int trace;
signed short v94 = 0;
signed char v93 = 2;
unsigned char v92 = 3;

unsigned int v23 (unsigned int v95, signed char v96, unsigned char v97)
{
history[history_index++] = (int)v95;
history[history_index++] = (int)v96;
history[history_index++] = (int)v97;
{
for (;;) {
signed short v100 = -2;
signed int v99 = 3;
signed char v98 = -3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned short v17 (signed int v101, unsigned short v102)
{
history[history_index++] = (int)v101;
history[history_index++] = (int)v102;
{
for (;;) {
signed short v105 = -2;
signed int v104 = -4;
unsigned char v103 = 5;
trace++;
switch (trace)
{
case 3: 
return v102;
default: abort ();
}
}
}
}
