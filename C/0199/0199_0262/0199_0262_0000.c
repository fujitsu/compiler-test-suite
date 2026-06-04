#include <stdio.h>
#include <stdlib.h>
extern signed char v1 (unsigned int);
extern signed char (*v2) (unsigned int);
extern void v3 (unsigned char);
extern void (*v4) (unsigned char);
extern void v7 (void);
extern void (*v8) (void);
extern unsigned int v9 (unsigned short);
extern unsigned int (*v10) (unsigned short);
extern signed short v11 (void);
extern signed short (*v12) (void);
extern signed short v13 (void);
extern signed short (*v14) (void);
extern signed char v15 (signed int, unsigned short, unsigned char, unsigned int);
extern signed char (*v16) (signed int, unsigned short, unsigned char, unsigned int);
extern unsigned char v17 (signed short, signed int, unsigned short);
extern unsigned char (*v18) (signed short, signed int, unsigned short);
extern unsigned int v19 (signed short, unsigned char);
extern unsigned int (*v20) (signed short, unsigned char);
signed short v21 (signed short, unsigned char);
signed short (*v22) (signed short, unsigned char) = v21;
extern unsigned char v23 (unsigned int, unsigned char, unsigned short, unsigned int);
extern unsigned char (*v24) (unsigned int, unsigned char, unsigned short, unsigned int);
extern signed short v25 (signed int, signed short, unsigned char);
extern signed short (*v26) (signed int, signed short, unsigned char);
extern signed int v27 (unsigned char, unsigned int, unsigned char, signed char);
extern signed int (*v28) (unsigned char, unsigned int, unsigned char, signed char);
void v29 (signed int, unsigned short, unsigned int, signed short);
void (*v30) (signed int, unsigned short, unsigned int, signed short) = v29;
extern int history[];
extern int history_index;
extern int trace;
unsigned char v33 = 5;
unsigned int v32 = 3U;
signed int v31 = -2;

void v29 (signed int v34, unsigned short v35, unsigned int v36, signed short v37)
{
history[history_index++] = (int)v34;
history[history_index++] = (int)v35;
history[history_index++] = (int)v36;
history[history_index++] = (int)v37;
{
for (;;) {
signed short v40 = -3;
signed short v39 = 0;
unsigned char v38 = 0;
trace++;
switch (trace)
{
case 2: 
return;
case 6: 
return;
case 8: 
return;
default: abort ();
}
}
}
}

signed short v21 (signed short v41, unsigned char v42)
{
history[history_index++] = (int)v41;
history[history_index++] = (int)v42;
{
for (;;) {
unsigned char v45 = 3;
unsigned int v44 = 7U;
signed char v43 = 1;
trace++;
switch (trace)
{
case 5: 
{
signed int v46;
unsigned short v47;
unsigned int v48;
signed short v49;
v46 = -4 + -2;
v47 = 7 - 3;
v48 = 6U + v44;
v49 = v41 + v41;
v29 (v46, v47, v48, v49);
}
break;
case 7: 
{
signed int v50;
unsigned short v51;
unsigned int v52;
signed short v53;
v50 = 1 + 3;
v51 = 0 + 3;
v52 = 1U + 2U;
v53 = v41 - 0;
v29 (v50, v51, v52, v53);
}
break;
case 9: 
return v41;
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
unsigned int v56;
signed char v57;
v56 = v32 - 5U;
v57 = v1 (v56);
history[history_index++] = (int)v57;
}
} while (trace < 12);
{
int i;
for (i = 0; i < history_index; i++)
printf ("%d\n", history[i]);
return 0;
}
}
