#include <stdlib.h>
extern unsigned short v1 (unsigned char, signed short, signed char);
extern unsigned short (*v2) (unsigned char, signed short, signed char);
extern signed int v3 (signed short, signed short);
extern signed int (*v4) (signed short, signed short);
extern unsigned char v5 (void);
extern unsigned char (*v6) (void);
unsigned short v7 (signed short, signed int);
unsigned short (*v8) (signed short, signed int) = v7;
extern unsigned int v9 (signed short, unsigned short, signed char);
extern unsigned int (*v10) (signed short, unsigned short, signed char);
extern signed char v11 (unsigned int, signed char);
extern signed char (*v12) (unsigned int, signed char);
extern unsigned int v13 (void);
extern unsigned int (*v14) (void);
extern unsigned char v15 (unsigned int, unsigned short, unsigned short, signed int);
extern unsigned char (*v16) (unsigned int, unsigned short, unsigned short, signed int);
extern signed short v17 (signed int, unsigned int);
extern signed short (*v18) (signed int, unsigned int);
extern unsigned char v19 (void);
extern unsigned char (*v20) (void);
extern unsigned char v21 (signed short, signed int, signed int);
extern unsigned char (*v22) (signed short, signed int, signed int);
extern signed int v23 (signed int);
extern signed int (*v24) (signed int);
extern signed int v25 (signed int, unsigned short, signed short);
extern signed int (*v26) (signed int, unsigned short, signed short);
extern signed char v27 (unsigned int, unsigned short, signed short, unsigned int);
extern signed char (*v28) (unsigned int, unsigned short, signed short, unsigned int);
signed int v29 (signed short, signed int);
signed int (*v30) (signed short, signed int) = v29;
extern int history[];
extern int history_index;
extern int trace;
unsigned int v95 = 2U;
signed int v94 = 2;
unsigned short v93 = 0;

signed int v29 (signed short v96, signed int v97)
{
history[history_index++] = (int)v96;
history[history_index++] = (int)v97;
{
for (;;) {
unsigned int v100 = 2U;
unsigned int v99 = 0U;
unsigned char v98 = 2;
trace++;
switch (trace)
{
case 10: 
return v97;
default: abort ();
}
}
}
}

unsigned short v7 (signed short v101, signed int v102)
{
history[history_index++] = (int)v101;
history[history_index++] = (int)v102;
{
for (;;) {
unsigned int v105 = 6U;
unsigned int v104 = 2U;
signed short v103 = 0;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
