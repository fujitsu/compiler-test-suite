#include <stdlib.h>
extern unsigned short v1 (unsigned short, unsigned char, unsigned short);
extern unsigned short (*v2) (unsigned short, unsigned char, unsigned short);
signed int v3 (void);
signed int (*v4) (void) = v3;
extern signed int v5 (unsigned int, signed int, unsigned int, signed int);
extern signed int (*v6) (unsigned int, signed int, unsigned int, signed int);
extern unsigned int v7 (void);
extern unsigned int (*v8) (void);
extern unsigned char v9 (unsigned char, signed char, signed int, signed char);
extern unsigned char (*v10) (unsigned char, signed char, signed int, signed char);
extern unsigned int v11 (unsigned char, unsigned short, signed char);
extern unsigned int (*v12) (unsigned char, unsigned short, signed char);
extern unsigned char v13 (unsigned short, signed char, signed short);
extern unsigned char (*v14) (unsigned short, signed char, signed short);
signed short v15 (signed int);
signed short (*v16) (signed int) = v15;
extern signed short v17 (signed short, signed char, signed int, signed char);
extern signed short (*v18) (signed short, signed char, signed int, signed char);
unsigned char v19 (unsigned char);
unsigned char (*v20) (unsigned char) = v19;
extern signed short v21 (void);
extern signed short (*v22) (void);
extern unsigned int v23 (void);
extern unsigned int (*v24) (void);
extern signed int v27 (signed short);
extern signed int (*v28) (signed short);
extern signed int v29 (unsigned int);
extern signed int (*v30) (unsigned int);
extern int history[];
extern int history_index;
extern int trace;
signed int v45 = 2;
signed short v44 = -1;
signed char v43 = -4;

unsigned char v19 (unsigned char v46)
{
history[history_index++] = (int)v46;
{
for (;;) {
signed short v49 = 3;
signed short v48 = 3;
unsigned int v47 = 0U;
trace++;
switch (trace)
{
case 4: 
{
unsigned int v50;
v50 = v23 ();
history[history_index++] = (int)v50;
}
break;
case 6: 
{
unsigned int v51;
v51 = v23 ();
history[history_index++] = (int)v51;
}
break;
case 8: 
return v46;
case 10: 
{
unsigned int v52;
v52 = v23 ();
history[history_index++] = (int)v52;
}
break;
case 12: 
return 5;
default: abort ();
}
}
}
}

signed short v15 (signed int v53)
{
history[history_index++] = (int)v53;
{
for (;;) {
signed int v56 = 1;
signed int v55 = -1;
signed short v54 = -2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed int v3 (void)
{
{
for (;;) {
unsigned int v59 = 6U;
unsigned short v58 = 2;
signed short v57 = -2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
