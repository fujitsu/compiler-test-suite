#include <stdio.h>
#include <stdlib.h>
extern signed short v1 (void);
extern signed short (*v2) (void);
extern unsigned char v3 (unsigned char);
extern unsigned char (*v4) (unsigned char);
extern unsigned short v5 (unsigned short, signed char, signed char);
extern unsigned short (*v6) (unsigned short, signed char, signed char);
signed char v7 (unsigned char, signed int, unsigned char);
signed char (*v8) (unsigned char, signed int, unsigned char) = v7;
extern void v9 (unsigned int, signed int, signed char, signed short);
extern void (*v10) (unsigned int, signed int, signed char, signed short);
extern unsigned char v11 (signed char, unsigned int, signed char, unsigned char);
extern unsigned char (*v12) (signed char, unsigned int, signed char, unsigned char);
extern signed short v13 (signed int);
extern signed short (*v14) (signed int);
extern signed char v15 (unsigned int, unsigned short, signed int, signed int);
extern signed char (*v16) (unsigned int, unsigned short, signed int, signed int);
extern signed short v17 (signed short, signed int, signed char);
extern signed short (*v18) (signed short, signed int, signed char);
extern unsigned int v19 (signed char, unsigned short, unsigned int, signed short);
extern unsigned int (*v20) (signed char, unsigned short, unsigned int, signed short);
extern unsigned int v21 (signed short, signed char, unsigned int, signed char);
extern unsigned int (*v22) (signed short, signed char, unsigned int, signed char);
extern signed short v23 (unsigned short, signed char, unsigned short);
extern signed short (*v24) (unsigned short, signed char, unsigned short);
extern unsigned char v25 (void);
extern unsigned char (*v26) (void);
extern signed char v27 (void);
extern signed char (*v28) (void);
extern void v29 (unsigned short, signed char);
extern void (*v30) (unsigned short, signed char);
extern int history[];
extern int history_index;
extern int trace;
unsigned int v33 = 0U;
signed char v32 = -3;
signed int v31 = 0;

signed char v7 (unsigned char v34, signed int v35, unsigned char v36)
{
history[history_index++] = (int)v34;
history[history_index++] = (int)v35;
history[history_index++] = (int)v36;
{
for (;;) {
signed int v39 = 0;
signed short v38 = -1;
signed short v37 = -2;
trace++;
switch (trace)
{
case 1: 
{
signed char v40;
unsigned short v41;
unsigned int v42;
signed short v43;
unsigned int v44;
v40 = 0 - 3;
v41 = 4 - 2;
v42 = 0U + 4U;
v43 = v38 - v38;
v44 = v19 (v40, v41, v42, v43);
history[history_index++] = (int)v44;
}
break;
case 3: 
{
signed char v45;
unsigned short v46;
unsigned int v47;
signed short v48;
unsigned int v49;
v45 = -3 + 3;
v46 = 6 + 7;
v47 = 6U + 5U;
v48 = -4 - -4;
v49 = v19 (v45, v46, v47, v48);
history[history_index++] = (int)v49;
}
break;
case 5: 
{
signed char v50;
unsigned short v51;
unsigned int v52;
signed short v53;
unsigned int v54;
v50 = 0 - -1;
v51 = 3 + 4;
v52 = 5U + 1U;
v53 = v38 + 3;
v54 = v19 (v50, v51, v52, v53);
history[history_index++] = (int)v54;
}
break;
case 7: 
{
unsigned int v55;
unsigned short v56;
signed int v57;
signed int v58;
signed char v59;
v55 = 4U - 4U;
v56 = 3 - 5;
v57 = v35 - v35;
v58 = 1 + -4;
v59 = v15 (v55, v56, v57, v58);
history[history_index++] = (int)v59;
}
break;
case 15: 
return 2;
default: abort ();
}
}
}
}

int history[1000];
int history_index = 0;
int trace = -1;

signed int main(void)
{
do {
{
signed short v62;
v62 = v1 ();
history[history_index++] = (int)v62;
}
} while (trace < 16);
{
int i;
for (i = 0; i < history_index; i++)
printf ("%d\n", history[i]);
return 0;
}
}
