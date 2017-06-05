figure('units','normalized','outerposition',[0 0 1 1])

for i=3000:pas_Affichage/2:N
    DrawBall(X_b(:,i), R_b);
    hold on
    for j=1:Nb_q
        DrawCylinder(X_q(:,i,j),Dir_q(:,i,j));             %NORMAL display
%         DrawCylinderDebug(X_q(:,i,j), X_q(:,i,j+Nb_q));     %DEBUG HERE
    end
    
    xlim([0 25]);
    ylim([-12 12]);
    zlim([0 25]);

   %% Focus sur les quilles
%     set(gca, 'CameraPosition', [10, 4, 5]);
%     set(gca, 'CameraTarget', [18.1,0,0]);
%     camzoom(15);
   %% Focus boules
    if(X_b(1,i)<17) 
        set(gca, 'CameraPosition', [X_b(1,i)-8, 0, 5]);
        set(gca, 'CameraTarget', [X_b(1,i), 0, 0]);
    else
        set(gca, 'CameraPosition', [10, 0, 5]);
        set(gca, 'CameraTarget', [17, 0, 0]);
        set(gca, 'CameraUpVector', [0, 0, 1]);
    end
  
    camzoom(15);
    
    %% Fin
    hold off
   
    drawnow;
end

