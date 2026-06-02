#include <stdio.h>
#include <stdlib.h>
extern void v1 (signed short, signed char, signed int);
extern void (*v2) (signed short, signed char, signed int);
extern unsigned short v3 (signed int, unsigned short);
extern unsigned short (*v4) (signed int, unsigned short);
extern signed int v5 (signed char, unsigned char, unsigned char, signed int);
extern signed int (*v6) (signed char, unsigned char, unsigned char, signed int);
extern unsigned int v7 (unsigned char);
extern unsigned int (*v8) (unsigned char);
extern void v9 (unsigned char);
extern void (*v10) (unsigned char);
extern void v11 (unsigned int, unsigned int, signed int, unsigned char);
extern void (*v12) (unsigned int, unsigned int, signed int, unsigned char);
extern signed char v13 (void);
extern signed char (*v14) (void);
extern unsigned short v15 (unsigned int);
extern unsigned short (*v16) (unsigned int);
extern unsigned int v17 (signed char, signed short);
extern unsigned int (*v18) (signed char, signed short);
signed char v19 (void);
signed char (*v20) (void) = v19;
extern signed int v21 (signed char, unsigned char, signed int);
extern signed int (*v22) (signed char, unsigned char, signed int);
extern unsigned int v23 (unsigned char);
extern unsigned int (*v24) (unsigned char);
extern unsigned int v25 (signed int, signed char, signed short, unsigned int);
extern unsigned int (*v26) (signed int, signed char, signed short, unsigned int);
extern void v27 (unsigned short, signed char, unsigned char, signed short);
extern void (*v28) (unsigned short, signed char, unsigned char, signed short);
signed int v29 (unsigned int, unsigned char);
signed int (*v30) (unsigned int, unsigned char) = v29;
extern int history[];
extern int history_index;
extern int trace;
signed short v33 = 1;
signed int v32 = 0;
signed short v31 = -2;

signed int v29 (unsigned int v34, unsigned char v35)
{
history[history_index++] = (int)v34;
history[history_index++] = (int)v35;
{
for (;;) {
unsigned int v38 = 3U;
signed short v37 = -4;
signed char v36 = 0;
trace++;
switch (trace)
{
case 5: 
return -1;
case 7: 
return -4;
case 11: 
return -4;
default: abort ();
}
}
}
}

signed char v19 (void)
{
{
for (;;) {
unsigned char v41 = 2;
unsigned int v40 = 1U;
signed char v39 = 0;
trace++;
switch (trace)
{
case 1: 
{
signed char v42;
unsigned char v43;
signed int v44;
signed int v45;
v42 = -4 + v39;
v43 = 7 - 7;
v44 = -1 - 1;
v45 = v21 (v42, v43, v44);
history[history_index++] = (int)v45;
}
break;
case 3: 
{
signed char v46;
unsigned char v47;
signed int v48;
signed int v49;
v46 = v39 + 0;
v47 = v41 - 4;
v48 = 3 + -4;
v49 = v21 (v46, v47, v48);
history[history_index++] = (int)v49;
}
break;
case 9: 
{
signed char v50;
unsigned char v51;
signed int v52;
signed int v53;
v50 = -2 + 0;
v51 = 3 + v41;
v52 = 3 - -2;
v53 = v21 (v50, v51, v52);
history[history_index++] = (int)v53;
}
break;
case 13: 
return v39;
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
signed short v56;
signed char v57;
signed int v58;
v56 = v33 + 2;
v57 = 0 - -1;
v58 = v32 + v32;
v1 (v56, v57, v58);
}
} while (trace < 14);
{
int i;
for (i = 0; i < history_index; i++)
printf ("%d\n", history[i]);
return 0;
}
}
